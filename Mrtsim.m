function  varargout=Mrtsim(varargin)
% Mrtsim M-file for Mrtsim.fig
%      Mrtsim, by itself, creates a new Mrtsim or raises the existing
%      singleton*.
%
%      H = Mrtsim returns the handle to a new Mrtsim or the handle to
%      the existing singleton*.
%
%      Mrtsim('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Mrtsim.M with the given input arguments.
%
%      Mrtsim('Property','Value',...) creates a new Mrtsim or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Mrtsim_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Mrtsim_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Mrtsim

% Last Modified by GUIDE v2.5 13-Dec-2009 16:01:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
global Flag;

Flag.Slider  = 0;
Flag.Stop    = 0;
Flag.Start   = 0;
Flag.Continue= 0;

gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Mrtsim_OpeningFcn, ...
    'gui_OutputFcn',  @Mrtsim_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Mrtsim is made visible.
function Mrtsim_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Mrtsim (see VARARGIN)

% Choose default command line output for Mrtsim
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Mrtsim wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Mrtsim_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider1,'Value');
set(handles.slider1_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of
%        slider
Flag.Slider = 1;



% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider1_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider1_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider1_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 3)
    set(handles.slider1,'Value',0);
    set(handles.slider1_editText,'String','0');
else
    set(handles.slider1,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider1_editText as text
%        str2double(get(hObject,'String')) returns contents of slider1_editText as a double


% --- Executes during object creation, after setting all properties.
function slider1_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
global Flag;
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider2,'Value');
set(handles.slider2_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function slider2_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider2_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider2_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 100)
    set(handles.slider2,'Value',0);
    set(handles.slider2_editText,'String','0');
else
    set(handles.slider2,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider2_editText as text
%        str2double(get(hObject,'String')) returns contents of slider2_editText as a double


% --- Executes during object creation, after setting all properties.
function slider2_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider3,'Value');
set(handles.slider3_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function slider3_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider3_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider3_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 1.5)
    set(handles.slider3,'Value',0);
    set(handles.slider3_editText,'String','0');
else
    set(handles.slider3,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider3_editText as text
%        str2double(get(hObject,'String')) returns contents of slider3_editText as a double


% --- Executes during object creation, after setting all properties.
function slider3_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider4,'Value');
set(handles.slider4_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function slider4_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider4_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider4_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue >0.05)
    set(handles.slider4,'Value',0);
    set(handles.slider4_editText,'String','0');
else
    set(handles.slider4,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider4_editText as text
%        str2double(get(hObject,'String')) returns contents of slider4_editText as a double


% --- Executes during object creation, after setting all properties.
function slider4_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider5,'Value');
set(handles.slider5_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;

% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function slider5_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider5_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider5_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 100)
    set(handles.slider5,'Value',0);
    set(handles.slider5_editText,'String','0');
else
    set(handles.slider5,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider5_editText as text
%        str2double(get(hObject,'String')) returns contents of slider5_editText as a double


% --- Executes during object creation, after setting all properties.
function slider5_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider6,'Value');
set(handles.slider6_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function slider6_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider6_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider6_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 3)
    set(handles.slider6,'Value',0);
    set(handles.slider6_editText,'String','0');
else
    set(handles.slider6,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider6_editText as text
%        str2double(get(hObject,'String')) returns contents of slider6_editText as a double


% --- Executes during object creation, after setting all properties.
function slider6_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider7,'Value');
set(handles.slider7_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function slider7_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider7_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider7_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 200)
    set(handles.slider7,'Value',0);
    set(handles.slider7_editText,'String','0');
else
    set(handles.slider7,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider7_editText as text
%        str2double(get(hObject,'String')) returns contents of slider7_editText as a double


% --- Executes during object creation, after setting all properties.
function slider7_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider8,'Value');
set(handles.slider8_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;

% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function slider8_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider8_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider8_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 10)
    set(handles.slider8,'Value',0);
    set(handles.slider8_editText,'String','0');
else
    set(handles.slider8,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider8_editText as text
%        str2double(get(hObject,'String')) returns contents of slider8_editText as a double


% --- Executes during object creation, after setting all properties.
function slider8_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider9,'Value');
set(handles.slider9_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider9_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider9_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider9_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 4)
    set(handles.slider9,'Value',0);
    set(handles.slider9_editText,'String','0');
else
    set(handles.slider9,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider9_editText as text
%        str2double(get(hObject,'String')) returns contents of slider9_editText as a double


% --- Executes during object creation, after setting all properties.
function slider9_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function slider10_Callback(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider10,'Value');
set(handles.slider10_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;


% --- Executes during object creation, after setting all properties.
function slider10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider10_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider10_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider10_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 2)
    set(handles.slider10,'Value',0);
    set(handles.slider10_editText,'String','0');
else
    set(handles.slider10,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider10_editText as text
%        str2double(get(hObject,'String')) returns contents of slider10_editText as a double


% --- Executes during object creation, after setting all properties.
function slider10_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function slider11_Callback(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider11,'Value');
set(handles.slider11_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;


% --- Executes during object creation, after setting all properties.
function slider11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider11_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider11_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider11_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 200)
    set(handles.slider11,'Value',0);
    set(handles.slider11_editText,'String','0');
else
    set(handles.slider11,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider11_editText as text
%        str2double(get(hObject,'String')) returns contents of slider11_editText as a double


% --- Executes during object creation, after setting all properties.
function slider11_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider11_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider12_Callback(hObject, eventdata, handles)
% hObject    handle to slider12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider12,'Value');
set(handles.slider12_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;


% --- Executes during object creation, after setting all properties.
function slider12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function slider12_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider12_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider12_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 3.7)
    set(handles.slider12,'Value',0);
    set(handles.slider12_editText,'String','0');
else
    set(handles.slider12,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider12_editText as text
%        str2double(get(hObject,'String')) returns contents of slider12_editText as a double


% --- Executes during object creation, after setting all properties.
function slider12_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider12_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in start_pushbutton.
function start_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to start_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% cla(handles.axes1,'reset')
% cla(handles.axes2,'reset')
global p; global Flag; global q;

if Flag.Start==0 && Flag.Continue==0 && Flag.Slider==0
    guidata(hObject, handles)
    q.t=0; q.BP=[]; q.HR=[]; q.t3=[]; q.t1=0;
end

while 1
    pause(1)
    tic
    q.t=q.t+1;
    guidata(hObject, handles)
    p.C_a       = str2double(get(handles.slider1_editText,'String'));
    p.C_v       = str2double(get(handles.slider2_editText,'String'));
    p.R0_a      = str2double(get(handles.slider3_editText,'String'));
    p.R_v       = str2double(get(handles.slider4_editText,'String'));
    p.DeltaV    = str2double(get(handles.slider5_editText,'String'));
    p.tau       = str2double(get(handles.slider8_editText,'String'));
    p.V_H       = str2double(get(handles.slider9_editText,'String'));
    p.Betta_H   = str2double(get(handles.slider10_editText,'String'));
    p.Alpha     = str2double(get(handles.slider13_editText,'String'));
    p.Gamma     = str2double(get(handles.slider14_editText,'String'));
    p.Delta_h   = str2double(get(handles.slider15_editText,'String'));
    p.IHR       = str2double(get(handles.slider6_editText,'String'));
    p.MAP       = str2double(get(handles.slider7_editText,'String'));
    p.P_init    = str2double(get(handles.slider11_editText,'String'));
    p.HR_init   = str2double(get(handles.slider12_editText,'String'));
    p.sig_sp    = str2double(get(handles.slider16_editText,'String'));
    p.sig_Alpha = str2double(get(handles.slider17_editText,'String'));

    Flag.Slider

    if Flag.Continue==1 || Flag.Start~=0 || Flag.Slider~=0
        y0=[q.BP(end); q.HR(end)];
    end;
    if Flag.Start==0 && Flag.Continue==0 && Flag.Slider==0
        y0=[p.P_init;p.HR_init];
        cla(handles.axes3,'reset')
        cla(handles.axes4,'reset')
        Flag.Start=1;
    end;

    lags=[p.tau];
    tspan=[0:30];
    sol = dde23(@dde_pedde,lags,y0,tspan);
        tint = linspace(0,30,90);
        yint = deval(sol,tint);
        
%     yint=sol.y;
%     tint=30*sol.x/max(sol.x);
%     t2=sol.x;

    q.BP=[q.BP yint(1,:)];
    q.HR=[q.HR yint(2,:)];


    t2=tint;

    q.t1=q.t1+length(t2);
    q.t3=[q.t3 t2+31*(q.t-1)];
    t4=ones(1,length(t2));

    t5=q.t3(length(q.t3)-length(t2)+1:length(q.t3));
    q.t6=[length(q.t3)-length(t2)+1:length(q.t3)];

    %     axes(handles.axes1)
    %     scatter(q.BP(end-length(t2)+1:end),q.HR(end-length(t2)+1:end),3,'b','filled')
    %     xlim([50 200]);
    %     ylim([0 3]);
    %     hold on
    %     grid on
    %     xlabel('Blood Pressure (mmHg)');
    %     ylabel('Heart Rate (beat/sec)');

    %     axes(handles.axes2)
    %     plot([50:5:200],BR,'b','LineWidth',1.5);
    %     hold on
    %     plot([50:5:200],BA,'r','LineWidth',1.5);
    %     xlabel('Blood Pressure (mmHg)');
    %     ylabel('f(p)');
    %     grid on

    axes(handles.axes3)
    legend('off')
    xlim([max(0,q.t3(end)-500)+1, max(500,q.t3(end))])
    plot(t5,q.BP(q.t6),'b')
    hold on
    plot(t5,t4.*p.sig_sp,'r');
    hold on
    plot(t5,t4.*mean(q.BP),'k');
    xlabel('Time (sec)','fontsize',11,'fontweight','b');
    ylabel('Blood Pressure (mmHg)','fontsize',11,'fontweight','b');
    grid on

    axes(handles.axes4)
    legend('off')
    xlim([max(0,q.t3(end)-500)+1, max(500,q.t3(end))])
    plot(t5,q.HR(q.t6),'b')
    hold on
    plot(t5,t4.*p.IHR,'r');
    hold on
    plot(t5,t4.*mean(q.HR),'k');
    xlabel('Time (sec)','fontsize',11,'fontweight','b');
    ylabel('Heart Rate (beat/sec)','fontsize',11,'fontweight','b');
    grid on
    toc
    if  Flag.Stop~=0 && Flag.Continue~=1
        axes(handles.axes3)
        legend('Instantaneous Blood Pressure','Baroreflex Setpoint','Mean Blood Pressure','Location','Best');
        axes(handles.axes4)
        legend('Instantaneous Heart Rate','Intrinsic Heart Rate','Mean Heart Rate','Location','Best');
        y0=[q.BP(end); q.HR(end)];
        break
    end
end

guidata(hObject, handles); %updates the handles




function axes_tutorial_OpeningFcn
set(hObject,'toolbar','figure');


% --- Executes on slider movement.
function slider13_Callback(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider13,'Value');
set(handles.slider13_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;


% --- Executes during object creation, after setting all properties.
function slider13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function slider13_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider13_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider13_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 3)
    set(handles.slider13,'Value',0);
    set(handles.slider13_editText,'String','0');
else
    set(handles.slider13,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider13_editText as text
%        str2double(get(hObject,'String')) returns contents of slider13_editText as a double


% --- Executes during object creation, after setting all properties.
function slider13_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider13_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider14_Callback(hObject, eventdata, handles)
% hObject    handle to slider14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider14,'Value');
set(handles.slider14_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;


% --- Executes during object creation, after setting all properties.
function slider14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider14_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider14_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider14_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 0.5)
    set(handles.slider14,'Value',0);
    set(handles.slider14_editText,'String','0');
else
    set(handles.slider14,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider14_editText as text
%        str2double(get(hObject,'String')) returns contents of slider14_editText as a double


% --- Executes during object creation, after setting all properties.
function slider14_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider14_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function slider15_Callback(hObject, eventdata, handles)
% hObject    handle to slider15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider15,'Value');
set(handles.slider15_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;

% --- Executes during object creation, after setting all properties.
function slider15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function slider15_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider15_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider15_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 4)
    set(handles.slider15,'Value',0);
    set(handles.slider15_editText,'String','0');
else
    set(handles.slider15,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider15_editText as text
%        str2double(get(hObject,'String')) returns contents of slider15_editText as a double


% --- Executes during object creation, after setting all properties.
function slider15_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider15_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider16_Callback(hObject, eventdata, handles)
% hObject    handle to slider16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider16,'Value');
set(handles.slider16_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;

% --- Executes during object creation, after setting all properties.
function slider16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider16_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider16_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider16_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 50 || sliderValue > 200)
    set(handles.slider16,'Value',0);
    set(handles.slider16_editText,'String','0');
else
    set(handles.slider16,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider16_editText as text
%        str2double(get(hObject,'String')) returns contents of slider16_editText as a double


% --- Executes during object creation, after setting all properties.
function slider16_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider16_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on slider movement.
function slider17_Callback(hObject, eventdata, handles)
% hObject    handle to slider17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider17,'Value');
set(handles.slider17_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;


% --- Executes during object creation, after setting all properties.
function slider17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function slider17_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider17_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider17_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 0.25)
    set(handles.slider17,'Value',0);
    set(handles.slider17_editText,'String','0');
else
    set(handles.slider17,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider17_editText as text
%        str2double(get(hObject,'String')) returns contents of slider17_editText as a double


% --- Executes during object creation, after setting all properties.
function slider17_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider17_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --------------------------------------------------------------------
function uipushtool3_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on slider12_editText and none of its controls.
function slider12_editText_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to slider12_editText (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider23_Callback(hObject, eventdata, handles)
% hObject    handle to slider23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider23,'Value');
set(handles.slider23_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;


% --- Executes during object creation, after setting all properties.
function slider23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider23_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider23_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider23_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 0.25)
    set(handles.slider23,'Value',0);
    set(handles.slider23_editText,'String','0');
else
    set(handles.slider23,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider23_editText as text
%        str2double(get(hObject,'String')) returns contents of slider23_editText as a double


% --- Executes during object creation, after setting all properties.
function slider23_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider23_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider24_Callback(hObject, eventdata, handles)
% hObject    handle to slider24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider24,'Value');
set(handles.slider24_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Flag.Slider = 1;


% --- Executes during object creation, after setting all properties.
function slider24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider24_editText_Callback(hObject, eventdata, handles)
% hObject    handle to slider24_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
sliderValue = get(handles.slider24_editText,'String');
sliderValue = str2num(sliderValue);
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 0.25)
    set(handles.slider24,'Value',0);
    set(handles.slider24_editText,'String','0');
else
    set(handles.slider24,'Value',sliderValue);
end
% Hints: get(hObject,'String') returns contents of slider24_editText as text
%        str2double(get(hObject,'String')) returns contents of slider24_editText as a double


% --- Executes during object creation, after setting all properties.
function slider24_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider24_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_17_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_15_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_8_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_9_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_12_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_14_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_16_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Sensitivity_Map();


% --------------------------------------------------------------------
function Untitled_22_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_21_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_20_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_19_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_18_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_23_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Sensitivity();


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over start_pushbutton.
function start_pushbutton_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to start_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on start_pushbutton and none of its controls.
function start_pushbutton_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to start_pushbutton (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in stop_pushbutton.
function stop_pushbutton_Callback(hObject, eventdata, handles)
global Flag;
% hObject    handle to stop_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Flag.Stop=1;


function dydt = dde_pedde(t,y,Z)
global p
ylag1 = Z(:,1);
p.Rc  = p.R0_a*(1+p.Alpha*(1-sig(ylag1(1))));
p.Ts  = 1 - sig(ylag1(1));
p.Tp  = sig(y(1));
%% First diff eqn
dpadt = -y(1) / (p.Rc * p.C_a) + y(2) * p.DeltaV / p.C_a;
%dpadt = -y(1) / (1+p.Alpha * sig(ylag1)) / p.eps_a  +  p.mu * y(2) / p.eps_a ;

%% Second diff eqn
dhdt = p.Betta_H * p.Ts / (1+p.Gamma*p.Tp) - p.V_H * p.Tp  + p.Delta_h*( p.IHR - y(2) );
% dhdt =  p.betta * sig(ylag1) / ( 1 + p.Gamma * (1-sig(y(1))) ) / p.eps_h - ...
%     p.nu * (1-sig(y(1))) / p.eps_h + p.Delta * (1-y(2)) / p.eps_h;

%% state vector
dydt = [dpadt;dhdt];


function out=sig(x)
global p
out=1./(1+exp(-p.sig_Alpha.*(x-p.sig_sp)));


% --- Executes on button press in Continue_pushbutton.
function Continue_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Continue_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Flag;
Flag.Continue=1;
Flag.Stop=0;
start_pushbutton_Callback(hObject, eventdata, handles);


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close Mrtsim
Avicenna();

