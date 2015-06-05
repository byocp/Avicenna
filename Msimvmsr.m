function  varargout=Msimvmsr(varargin)
% Msimvmsr M-file for Msimvmsr.fig
%      Msimvmsr, by itself, creates a new Msimvmsr or raises the existing
%      singleton*.
%
%      H = Msimvmsr returns the handle to a new Msimvmsr or the handle to
%      the existing singleton*.
%
%      Msimvmsr('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Msimvmsr.M with the given input arguments.
%
%      Msimvmsr('Property','Value',...) creates a new Msimvmsr or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Msimvmsr_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Msimvmsr_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Msimvmsr

% Last Modified by GUIDE v2.5 17-Dec-2009 17:01:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
clear Flag;

gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Msimvmsr_OpeningFcn, ...
    'gui_OutputFcn',  @Msimvmsr_OutputFcn, ...
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


% --- Executes just before Msimvmsr is made visible.
function Msimvmsr_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Msimvmsr (see VARARGIN)

% Choose default command line output for Msimvmsr
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Msimvmsr wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Msimvmsr_OutputFcn(hObject, eventdata, handles)
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




% --- Executes on button press in run_pushbutton.
function run_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to run_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% cla(handles.axes1,'reset')
% cla(handles.axes2,'reset')
global p; global q; global Flag;

Flag.Run=1;
Flag.Retry=0;
Flag.Next=0;

q.BP=[]; q.HR=[]; q.t3=[]; q.t1=0;
cla(handles.axes3,'reset')
cla(handles.axes4,'reset')

q.t=0;
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

%% solving differential equations - 30s invariant
%     yint=sol.y;
%     tint=30*sol.x/max(sol.x);
%     t2=sol.x;
lags=[p.tau];
y0=[p.P_init;p.HR_init];
tint = linspace(0,30,90);
k1=length(tint)
tspan=[0:30];
k2=length(tspan);

sol = dde23(@dde_pedde,lags,y0,tspan);
yint = deval(sol,tint);
q.BP=[q.BP yint(1,:)];
q.HR=[q.HR yint(2,:)];

q.t1=q.t1+k1;                % number of data point
q.t3=[q.t3 tint+(q.t-1)*(k2-1)]; % second
t5=q.t3(end-k1+1:end);                % time-instants of last batch
q.t6=[length(q.t3)-k1+1:length(q.t3)];% number of data samples in last batch

%% HR_msr loading and cleaning
q.HR_msr= [98.36065574	97.08737864	98.60312243	120.06003	96.56652361	100.1669449	103.1814273	102.0408163	105.8201058	109.223301	106.5088757	110.2941176	110.4294479	107.4306177	98.19967267	97.32360097	95.38950715	97.1659919	95.6937799	95.01187648	93.24009324	100.41841	101.2943163	95.16256939	96.15384615	101.5228426	104.9562682	101.095198	101.1804384	102.739726	102.739726	104.8340128	105.1709027	105.5718475	103.8961039	96.56652361	96	98.7654321	92.02453988	93.02325581	97.32360097	100.6148686	101.8675722	103.3295063	104.4386423	88.75739645	99.58506224	96.07686149	97.50812568	91.18541033	91.60305344	96.85230024	101.5228426	103.8661281	101.4370245	97.95918367	96.20523784	101.010101	92.95120062	93.09542281	97.24473258	87.71929825	96.15384615	88.17046289	98.57612267	99.17355372	105.0788091	93.67681499	88.365243	88.69179601	92.37875289	97.32360097	99.42004971	99.00990099	96.38554217	88.10572687	90.09009009	99.17355372	128.1366791	165.5629139	101.1804384	101.0668164	101.1804384	103.626943	97.4025974	91.18541033	97.1659919	92.66409266	95.31374106	102.915952	96.69621273	97.08737864	93.3125972	120.06003	103.7463977	99.75062344	107.2066706	91.95402299	98.68421053	100.1669449	97.1659919	101.9541206	102.1566402	98.19967267	97.24473258	98.36065574	100.2785515	102.6518392	107.1428571	109.5890411	102.9748284	97.56097561	107.3345259	113.3144476	110.2265769	108.9588378	109.78957	110.8374384	108.6300543	99.66777409	102.2146508	108.1730769	125.8521238	100.896861	103.8961039	102.7984009	101.010101	102.3017903	108.4337349	104.4386423	106.8249258	107.7199282	114.0684411	106.1320755	106.4773736	100.3344482	206.5404475	109.3560146	111.2484549	109.3892434	111.0425663	106.6666667	108.1081081	106.9518717	108.401084	103.8062284	104.2571677	112.1495327	114.5038168	105.3555751	105.6958309	105.1709027	95.01187648	91.46341463	120.06003	165.2892562	103.626943	103.9861352	95.6937799	103.8062284	104.4689495	159.2920354	109.4890511	109.0909091	104.8951049	110.2265769	111.8012422	110.8033241	102.0408163	103.8062284	108.0432173	107.5268817	101.7524025	102.0408163	104.4083527	104.8951049	105.6958309	107.4306177	109.0248334	106.4773736	104.3478261	107.2386059	103.2110092	106.5719361	109.8901099	144.8400724	105.4481547	110.5651106	108.1081081	106.1007958	108.9588378	110.0917431	107.2705602	107.5911536	114.6496815	104.8951049	107.5911536	107.9136691	104.4386423	106.0070671];
Interp_Type='linear';
q.HR_msr =interp1(1:length(q.HR_msr), q.HR_msr, 1:1/2:length(q.HR_msr) ,Interp_Type);
k=F2_Outlier(q.HR_msr',0.9);
q.HR_msr(k)= [];

%% plotting
axes(handles.axes3)
xlim([max(0,q.t3(end)-500)+1, min(500,q.t3(end))])
plot(t5,q.BP(q.t6),'b','LineWidth',1.5)
xlabel('Time (sec)','fontsize',11,'fontweight','b');
ylabel('Blood Pressure (mmHg)','fontsize',11,'fontweight','b');
grid on

axes(handles.axes4)
xlim([max(0,q.t3(end)-500)+1, min(500,q.t3(end))])
plot(t5,q.HR(q.t6),'b','LineWidth',1.5)
hold on
plot(q.HR_msr(1:30)/60,'r','LineWidth',1.5);
legend('Simulated','Measured');
xlabel('Time (sec)','fontsize',11,'fontweight','b');
ylabel('Heart Rate (beat/sec)','fontsize',11,'fontweight','b');
grid on


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
% --- Otherwise, executes on mouse press in 5 pixel border or over run_pushbutton.
function run_pushbutton_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to run_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on run_pushbutton and none of its controls.
function run_pushbutton_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to run_pushbutton (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)

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




% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close Msimvmsr
Avicenna();


% --- Executes on button press in retry_pushbutton.
function retry_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to retry_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p; global q; global Flag;

Flag.Run   = 0;
Flag.Retry = 1;
Flag.Next  = 0;

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

%% solving differential equations - solver mesh
%     yint=sol.y;
%     tint=30*sol.x/max(sol.x);
%     t2=sol.x;
lags=[p.tau];

%% initialization
y0=[q.BP(end-89); q.HR(end-89)];
tint = linspace(0,30,90);
k1=length(tint)
tspan=[0:30];
k2=length(tspan);

sol = dde23(@dde_pedde,lags,y0,tspan);
yint = deval(sol,tint);
q.BP(end-89:end)= yint(1,:);
q.HR(end-89:end)= yint(2,:);

% q.t1=q.t1+k1;                         % number of data point
% q.t3=[q.t3 tint+(q.t-1)*(k2-1)];      % second
% t5=q.t3(end-k1+1:end);                % time-instants of last batch
% q.t6=[length(q.t3)-k1+1:length(q.t3)];% number of data samples in last batch

%% plotting
cla(handles.axes3,'reset')
cla(handles.axes4,'reset')

axes(handles.axes3)
plot(q.t3,q.BP,'b','LineWidth',1.5)
xlabel('Time (sec)','fontsize',11,'fontweight','b');
ylabel('Blood Pressure (mmHg)','fontsize',11,'fontweight','b');
grid on

axes(handles.axes4)
plot(q.t3,q.HR,'b','LineWidth',1.5)
hold on
plot(q.HR_msr(1:q.t*(k2-1))/60,'r','LineWidth',1.5);
legend('Simulated','Measured');
xlabel('Time (sec)','fontsize',11,'fontweight','b');
ylabel('Heart Rate (beat/sec)','fontsize',11,'fontweight','b');
grid on



% --- Executes on button press in Next_pushbutton.
function Next_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Next_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p; global q; global Flag;

Flag.Run   = 0;
Flag.Retry = 0;
Flag.Next  = 1;

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

%% solving differential equations - solver mesh
%     yint=sol.y;
%     tint=30*sol.x/max(sol.x);
%     t2=sol.x;
lags=[p.tau];
y0=[q.BP(end); q.HR(end)];
tint = linspace(0,30,90);
k1=length(tint)
tspan=[0:30];
k2=length(tspan);

sol = dde23(@dde_pedde,lags,y0,tspan);
yint = deval(sol,tint);
q.BP=[q.BP yint(1,:)];
q.HR=[q.HR yint(2,:)];

q.t1=q.t1+k1;                    % number of data point
q.t3=[q.t3 tint+(q.t-1)*(k2-1)]; % second
t5=q.t3(end-k1+1:end);                % time-instants of last batch
q.t6=[length(q.t3)-k1+1:length(q.t3)];% number of data samples in last batch

%% HR_msr loading and cleaning
q.HR_msr= [98.36065574	97.08737864	98.60312243	120.06003	96.56652361	100.1669449	103.1814273	102.0408163	105.8201058	109.223301	106.5088757	110.2941176	110.4294479	107.4306177	98.19967267	97.32360097	95.38950715	97.1659919	95.6937799	95.01187648	93.24009324	100.41841	101.2943163	95.16256939	96.15384615	101.5228426	104.9562682	101.095198	101.1804384	102.739726	102.739726	104.8340128	105.1709027	105.5718475	103.8961039	96.56652361	96	98.7654321	92.02453988	93.02325581	97.32360097	100.6148686	101.8675722	103.3295063	104.4386423	88.75739645	99.58506224	96.07686149	97.50812568	91.18541033	91.60305344	96.85230024	101.5228426	103.8661281	101.4370245	97.95918367	96.20523784	101.010101	92.95120062	93.09542281	97.24473258	87.71929825	96.15384615	88.17046289	98.57612267	99.17355372	105.0788091	93.67681499	88.365243	88.69179601	92.37875289	97.32360097	99.42004971	99.00990099	96.38554217	88.10572687	90.09009009	99.17355372	128.1366791	165.5629139	101.1804384	101.0668164	101.1804384	103.626943	97.4025974	91.18541033	97.1659919	92.66409266	95.31374106	102.915952	96.69621273	97.08737864	93.3125972	120.06003	103.7463977	99.75062344	107.2066706	91.95402299	98.68421053	100.1669449	97.1659919	101.9541206	102.1566402	98.19967267	97.24473258	98.36065574	100.2785515	102.6518392	107.1428571	109.5890411	102.9748284	97.56097561	107.3345259	113.3144476	110.2265769	108.9588378	109.78957	110.8374384	108.6300543	99.66777409	102.2146508	108.1730769	125.8521238	100.896861	103.8961039	102.7984009	101.010101	102.3017903	108.4337349	104.4386423	106.8249258	107.7199282	114.0684411	106.1320755	106.4773736	100.3344482	206.5404475	109.3560146	111.2484549	109.3892434	111.0425663	106.6666667	108.1081081	106.9518717	108.401084	103.8062284	104.2571677	112.1495327	114.5038168	105.3555751	105.6958309	105.1709027	95.01187648	91.46341463	120.06003	165.2892562	103.626943	103.9861352	95.6937799	103.8062284	104.4689495	159.2920354	109.4890511	109.0909091	104.8951049	110.2265769	111.8012422	110.8033241	102.0408163	103.8062284	108.0432173	107.5268817	101.7524025	102.0408163	104.4083527	104.8951049	105.6958309	107.4306177	109.0248334	106.4773736	104.3478261	107.2386059	103.2110092	106.5719361	109.8901099	144.8400724	105.4481547	110.5651106	108.1081081	106.1007958	108.9588378	110.0917431	107.2705602	107.5911536	114.6496815	104.8951049	107.5911536	107.9136691	104.4386423	106.0070671];
Interp_Type='linear';
q.HR_msr =interp1(1:length(q.HR_msr), q.HR_msr, 1:1/2:length(q.HR_msr) ,Interp_Type);
k=Outlier(q.HR_msr',0.9);
q.HR_msr(k)= [];

%% plotting
axes(handles.axes3)
hold on
plot([q.t3(end-length(t5)-1),t5],q.BP(q.t6(end)-length(q.t6):q.t6(end)),'b','LineWidth',1.5)
xlabel('Time (sec)','fontsize',11,'fontweight','b');
ylabel('Blood Pressure (mmHg)','fontsize',11,'fontweight','b');
grid on

axes(handles.axes4)
% xlim([max(0,t5(end)-500)-1, min(500,t5(end))])
plot(q.HR_msr(1:q.t*(k2-1))/60,'r','LineWidth',1.5);
hold on
plot(t5,q.HR(q.t6(end)-length(q.t6)+1:q.t6(end)),'b','LineWidth',1.5)

legend('Simulated','Measured');
xlabel('Time (sec)','fontsize',11,'fontweight','b');
ylabel('Heart Rate (beat/sec)','fontsize',11,'fontweight','b');
grid on

