function  varargout=Avicenna(varargin)
% Avicenna M-file for Avicenna.fig
%      Avicenna, by itself, creates a new Avicenna or raises the existing
%      singleton*.
%
%      H = Avicenna returns the handle to a new Avicenna or the handle to
%      the existing singleton*.
%
%      Avicenna('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Avicenna.M with the given input arguments.
%
%      Avicenna('Property','Value',...) creates a new Avicenna or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Avicenna_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property
%      application
%      stop.  All inputs are passed to Avicenna_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Avicenna

% Last Modified by GUIDE v2.5 26-Nov-2012 18:43:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Avicenna_OpeningFcn, ...
                   'gui_OutputFcn',  @Avicenna_OutputFcn, ...
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


% --- Executes just before Avicenna is made visible.
function Avicenna_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Avicenna (see VARARGIN)

% Choose default command line output for Avicenna
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Avicenna wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Avicenna_OutputFcn(hObject, eventdata, handles) 
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




% --- Executes on button press in plot_pushbutton.
function plot_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to plot_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear BR BP HR SA PA result
cla(handles.axes1,'reset')
cla(handles.axes2,'reset')
cla(handles.axes3,'reset')
cla(handles.axes4,'reset')
guidata(hObject, handles)


%% pure parameter
C_a       = str2double(get(handles.slider1_editText,'String'));
C_v       = str2double(get(handles.slider2_editText,'String'));
R0_a      = str2double(get(handles.slider3_editText,'String'));
R_v       = str2double(get(handles.slider4_editText,'String'));
DeltaV    = str2double(get(handles.slider5_editText,'String'));
tau       = str2double(get(handles.slider8_editText,'String'));
V_H       = str2double(get(handles.slider9_editText,'String'));
Betta_H   = str2double(get(handles.slider10_editText,'String'));
Alpha     = str2double(get(handles.slider13_editText,'String'));
gamma     = str2double(get(handles.slider14_editText,'String'));
Delta_h   = str2double(get(handles.slider15_editText,'String'));
IHR       = str2double(get(handles.slider6_editText,'String'));
MAP       = str2double(get(handles.slider7_editText,'String'));
P_init    = str2double(get(handles.slider11_editText,'String'));
HR_init   = str2double(get(handles.slider12_editText,'String'));
sig_sp    = str2double(get(handles.slider16_editText,'String'));
sig_Alpha = str2double(get(handles.slider17_editText,'String'));

%% normalized parameter
% p.IHR       = IHR;
% p.MAP       = MAP;
% p.eps_a     = C_a*R0_a/tau;
% p.eps_h     = 1/(p.IHR*tau);
% p.Alpha     = Alpha;
% p.betta     = Betta_H/(p.IHR^2);
% p.gamma     = gamma;
% p.Delta     = Delta_h/p.IHR;
% p.mu        = R0_a*p.IHR*DeltaV/p.MAP;
% p.nu        = V_H/(p.IHR^2);
% p.P_init    = P_init;
% p.HR_init   = HR_init;
% p.sig_sp    = sig_sp;
% p.sig_Alpha = sig_Alpha;

%% input vector
% input=[p.eps_a;p.eps_h;p.Alpha;p.betta;p.gamma;p.Delta;...
%        p.mu;p.nu; p.IHR; p.MAP; p.sig_sp;p.sig_Alpha;...
%        p.P_init;p.HR_init;];
%**************************************************************************
input=[C_a; C_v; R0_a; R_v; DeltaV; IHR; MAP; tau; V_H; Betta_H; P_init; HR_init; Alpha; gamma; Delta_h; sig_sp; sig_Alpha];
%**************************************************************************
input2(1,1)=C_a;
input2(2,1)=R0_a;
input2(3,1)=DeltaV;
input2(4,1)=IHR;
input2(5,1)=tau;
input2(6,1)=V_H;
input2(7,1)=Betta_H;
input2(8,1)=P_init;
input2(9,1)=HR_init;
input2(10,1)=Alpha;
input2(11,1)=gamma;
input2(12,1)=Delta_h;
input2(13,1)=sig_sp;
input2(14,1)=sig_Alpha;
%**************************************************************************
%% ODE Solution
result=feqnsolver(input);
BP=cell2mat(result(1));
HR=cell2mat(result(2));
BR=cell2mat(result(3));
PA=cell2mat(result(4));
SA=cell2mat(result(5));
BA=cell2mat(result(6));
tint=cell2mat(result(7));

sum(abs(BP(end/2:end) - mean(BP(end/2:end)))./BP(end/2:end))

%**************************************************************************
%% Fsolve Solution - Builit-in MATLAB iterative function
out=myfun_Fsolve_Sol(input2);
Pf        = cell2mat(out(1));
Hf        = cell2mat(out(2));
outfsolve = cell2mat(out(3));

%**************************************************************************
%% Quadratic Solution 
out=F1_Quad_Sol(input2);
Quad_Sol_P=cell2mat(out(1));
Quad_Sol_H=cell2mat(out(2));
fin_res=cell2mat(out(3));



%**************************************************************************
%% Lyapunov Analysis for Stability through Eigenvalues at Operating Point
out=F1_Lyap_EigVal([input2;Pf]);
rleigvec=cell2mat(out(1));
imeigvec=cell2mat(out(2));
max(rleigvec)
%**************************************************************************
%% My iterative method
out=F1_My_Iter_Method(input2);
Pss = cell2mat(out(1));
Hss = cell2mat(out(2));

%**************************************************************************
%%
[BPmesh,HRmesh] = meshgrid(50:5:200,0.3:0.1:3);
mar=1./(1+exp(-sig_Alpha.*(BPmesh-sig_sp)));
ped=abs(  BPmesh - (1+Alpha*(1-mar))*R0_a*DeltaV.*HRmesh  )+...
    abs(  HRmesh + (1/Delta_h)*(V_H*mar-Betta_H*(1-mar)-Delta_h*IHR)  );
[xx,yy]=find(ped==min(min(ped)));
ped=round(ped);

% BPgrid=[50:5:200];
% HRgrid=[0.3:0.1:3];
% ped=zeros(1+(200-50)/5,1+(3-0.3)/0.1);
% for i=1: 1+(200-50)/5
%     for j=1:1+(3-0.3)/0.1
%         ped(i,j)=abs(BPgrid(i)-(1+Alpha*(1-BR(i))*R0_a*DeltaV*HRgrid(j)))+abs(HRgrid(j)+(1/Delta_h)*(V_H*BR(i)-Betta_H*(1-BR(i))-Delta_h*HR_init));
%         
%     end
% end
%**************************************************************************

axes(handles.axes1)
grid
plot(BP,HR,'k','LineWidth',1.5)
hold on
plot(BP(1),HR(1),'ok','LineWidth',2)
hold on
% plot(Pss,Hss,'-k','LineWidth',1)
% hold on
% plot(BPmesh(1,yy),HRmesh(xx,1),'o','MarkerSize',10);
[C h]=contour(BPmesh,HRmesh,ped,25);
% text_handle = clabel(C,h);
colormap gray
% % % % % colorbar
xlim([min(BP),max(BP)]);
ylim([min(HR),max(HR)]);
xlabel('Blood Pressure (mmHg)','fontsize',11,'fontweight','b');
ylabel('Heart Rate (beat/sec)','fontsize',11,'fontweight','b');
grid on
guidata(hObject, handles); %updates the handles

%**************************************************************************
axes(handles.axes2)
plot(rleigvec(1),imeigvec(1),'rx','LineWidth',2,'MarkerSize',10);
hold on
plot(rleigvec(2),imeigvec(2),'bx','LineWidth',2,'MarkerSize',10);
hold on
plot(rleigvec(3),imeigvec(3),'gx','LineWidth',2,'MarkerSize',10);
% plot(50:5:200,BR,'--b','LineWidth',1.5);
% hold on
% plot(50:5:200,BA,'k','LineWidth',1.5);
% xlabel('Blood Pressure (mmHg)','fontsize',11,'fontweight','b');
% legend('Sigmoid function','Baroreflex activity','Location','Best');
grid on
legend('H','P','Pd','Location','Best');
guidata(hObject, handles); %updates the handles

%**************************************************************************
axes(handles.axes3)
plot(tint,BP,'-b','LineWidth',1.5)
hold on
plot(ones(1,max(tint))*mean(BP),'--b','LineWidth',1.5);
% hold on
% plot(Pss,'-r','LineWidth',1.5);
hold on
% % % % % plot(tint,ones(1,round(length(tint))).*Quad_Sol_P,'-k','LineWidth',1.5);
% % % % % hold on
% % % % % plot(ones(1,length(Pss)).*Pf,'--k','LineWidth',1.5);

xlabel('Time (sec)','fontsize',11,'fontweight','b');
ylabel('Blood Pressure (mmHg)','fontsize',11,'fontweight','b');
legend('P(t) - Mean Blood Pressure ',...
    'P_{avg} - Blood Pressure',...
    strcat( 'Quad Sol. - P2 = ', num2str(Quad_Sol_P) ),...
    strcat( 'Fsolve Sol. - Pf = ', num2str(Pf) ),'Location','Best'); %'P_{ss} (Iterative Computation)'
grid on
guidata(hObject, handles); %updates the handles

%**************************************************************************
axes(handles.axes4)
plot(tint,HR,'-r','LineWidth',1.5)
hold on
plot(ones(1,max(tint))*mean(HR),'--r','LineWidth',1.5);
% hold on
% plot(Hss,'.-k');
hold on
% % % % % plot(tint,ones(1,round(length(tint))).*Quad_Sol_H,'-k','LineWidth',1.5);
% % % % % hold on
% % % % % plot(ones(1,length(Hss)).*Hf,'--k','LineWidth',1.5);

xlabel('Time (sec)','fontsize',11,'fontweight','b');
ylabel('Heart Rate (beat/sec)','fontsize',11,'fontweight','b');
legend('HR(t) - Mean Heart Rate','HR_{avg}- Heart Rate', ...
    strcat( 'Quad Sol. - H2 = ', num2str(Quad_Sol_H) ),...
    strcat( 'Fsolve Sol. - Hf = ', num2str(Hf) ),'Location','Best'); %' HR_{ss} (Iterative Computation)'
grid on
guidata(hObject, handles); %updates the handles
% plot(PA,'b','LineWidth',1.5);
% hold on
% plot(SA,'r','LineWidth',1.5);
% xlabel('Time');
% legend('Vagal activity)','Symp activity');

% ped=param(HR',BP');
% figure
% for i=1:4
%     subplot(2,2,i)
%     hist(ped(i,:),10)
% end


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
close Avicenna;
Msensind();


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
function Untitled_24_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close Avicenna;
Mrtsim;


% --------------------------------------------------------------------
function Untitled_23_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close Avicenna;
Msensjoint;


% --------------------------------------------------------------------
function Untitled_27_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close Avicenna;
Msimvmsr();


% --------------------------------------------------------------------
function uipushtool11_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
