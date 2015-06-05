function  varargout=Msensind(varargin)
% Msensind M-file for Msensind.fig
%      Msensind, by itself, creates a new Msensind or raises the existing
%      singleton*.
%
%      H = Msensind returns the handle to a new Msensind or the handle to
%      the existing singleton*.
%
%      Msensind('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Msensind.M with the given input arguments.
%
%      Msensind('Property','Value',...) creates a new Msensind or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before msensind_openingfcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to msensind_openingfcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Msensind

% Last Modified by GUIDE v2.5 13-Dec-2009 15:39:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',     mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Msensind_OpeningFcn, ...
    'gui_OutputFcn',  @Msensind_OutputFcn, ...
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


% --- Executes just before Msensind is made visible.
function Msensind_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Msensind (see VARARGIN)

% Choose default command line output for Msensind
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Msensind wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Msensind_OutputFcn(hObject, eventdata, handles)
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
sliderValue = get(handles.slider1,'Value');
set(handles.slider1_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider2,'Value');
set(handles.slider2_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider3,'Value');
set(handles.slider3_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider4,'Value');
set(handles.slider4_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider5,'Value');
set(handles.slider5_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider6,'Value');
set(handles.slider6_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider7,'Value');
set(handles.slider7_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider8,'Value');
set(handles.slider8_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider9,'Value');
set(handles.slider9_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider10,'Value');
set(handles.slider10_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider11,'Value');
set(handles.slider11_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider12,'Value');
set(handles.slider12_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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



function axes_tutorial_OpeningFcn
set(hObject,'toolbar','figure');



% --- Executes on slider movement.
function slider13_Callback(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(handles.slider13,'Value');
set(handles.slider13_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider14,'Value');
set(handles.slider14_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider15,'Value');
set(handles.slider15_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider16,'Value');
set(handles.slider16_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider17,'Value');
set(handles.slider17_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close Msensind;;
Avicenna();


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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
sliderValue = get(handles.slider23,'Value');
set(handles.slider23_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
sliderValue = get(handles.slider24,'Value');
set(handles.slider24_editText,'String', num2str(sliderValue));
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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
p.gamma     = str2double(get(handles.slider14_editText,'String'));
p.Delta_h   = str2double(get(handles.slider15_editText,'String'));
p.IHR       = str2double(get(handles.slider6_editText,'String'));
p.MAP       = str2double(get(handles.slider7_editText,'String'));
p.P_init    = str2double(get(handles.slider11_editText,'String'));
p.HR_init   = str2double(get(handles.slider12_editText,'String'));
p.sig_sp    = str2double(get(handles.slider16_editText,'String'));
p.sig_Alpha = str2double(get(handles.slider17_editText,'String'));

switch get(handles.popupmenu1,'Value')
    case 1

        out=fparamsens(p,1);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 2
        out=fparamsens(p,2);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 3
        out=fparamsens(p,3);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 4
        out=fparamsens(p,4);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 5
        out=fparamsens(p,5);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 6
        out=fparamsens(p,6);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 7
        out=fparamsens(p,7);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 8
        out=fparamsens(p,8);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 9
        out=fparamsens(p,9);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 10
        out=fparamsens(p,10);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 11
        out=fparamsens(p,11);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 12
        out=fparamsens(p,12);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 13
        out=fparamsens(p,13);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 14
        out=fparamsens(p,14);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 15
        out=fparamsens(p,15);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 16
        out=fparamsens(p,16);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
    case 17
        out=fparamsens(p,17);
        axes(handles.axes6)
        colormap(bone)
        contourf(cell2mat(out(1)))
        colorbar
        axes(handles.axes5)
        colormap(bone)
        contourf(cell2mat(out(2)))
        colorbar
end
axes(handles.axes6)
xlabel('Time','fontsize',11,'fontweight','b');
ylabel('Heart Rate','fontsize',11,'fontweight','b');
axes(handles.axes5)
xlabel('Time','fontsize',11,'fontweight','b');
% ylabel('Blood Pressure','fontsize',11,'fontweight','b');

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





