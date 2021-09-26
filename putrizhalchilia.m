function varargout = putrizhalchilia(varargin)
% PUTRIZHALCHILIA MATLAB code for putrizhalchilia.fig
%      PUTRIZHALCHILIA, by itself, creates a new PUTRIZHALCHILIA or raises the existing
%      singleton*.
%
%      H = PUTRIZHALCHILIA returns the handle to a new PUTRIZHALCHILIA or the handle to
%      the existing singleton*.
%
%      PUTRIZHALCHILIA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PUTRIZHALCHILIA.M with the given input arguments.
%
%      PUTRIZHALCHILIA('Property','Value',...) creates a new PUTRIZHALCHILIA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before putrizhalchilia_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to putrizhalchilia_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help putrizhalchilia

% Last Modified by GUIDE v2.5 26-Sep-2021 21:43:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @putrizhalchilia_OpeningFcn, ...
                   'gui_OutputFcn',  @putrizhalchilia_OutputFcn, ...
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


% --- Executes just before putrizhalchilia is made visible.
function putrizhalchilia_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to putrizhalchilia (see VARARGIN)

% Choose default command line output for putrizhalchilia
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes putrizhalchilia wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = putrizhalchilia_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in TmblPENJUMLAHAN.
function TmblPENJUMLAHAN_Callback(hObject, eventdata, handles)
% hObject    handle to TmblPENJUMLAHAN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Penjumlahan
axes(handles.axes1)
a = imread('putri.jpg');
b = rgb2gray(a);

c = imread('bunga.jpg');
d = rgb2gray(c);
e = imresize(d,[1366 730]);    
imshow(e)

f = b+e;

imshow (f)


% --- Executes on button press in TmblPENGURANGAN.
function TmblPENGURANGAN_Callback(hObject, eventdata, handles)
% hObject    handle to TmblPENGURANGAN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Pengurangan
axes(handles.axes2)
a = imread('putri.jpg');
b = rgb2gray(a);

c = imread('bunga.jpg');
d = rgb2gray(c);

e = imresize(d,[1366 730]);
imshow(e)

f = b-e;

imshow (f)

% --- Executes on button press in TmblPERKALIAN.
function TmblPERKALIAN_Callback(hObject, eventdata, handles)
% hObject    handle to TmblPERKALIAN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Perkalian
axes(handles.axes3)
a = imread('putri.jpg');
b = rgb2gray(a);

c=b.*2;

imshow (c)

% --- Executes on button press in TmblPEMBAGIAN.
function TmblPEMBAGIAN_Callback(hObject, eventdata, handles)
% hObject    handle to TmblPEMBAGIAN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Pembagian
axes(handles.axes4)
a = imread('putri.jpg');
b = rgb2gray(a);

c=b./2;

imshow (c)

% --- Executes on button press in TmblAND.
function TmblAND_Callback(hObject, eventdata, handles)
% hObject    handle to TmblAND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% AND
axes(handles.axes5)
a = imread('putri.jpg');
b = rgb2gray(a);

c = imread('bunga.jpg');
d = rgb2gray(c);

e = imresize(d,[1366 730]);
imshow(e)

f = and(b,e);

imshow (f)


% --- Executes on button press in TmblOR.
function TmblOR_Callback(hObject, eventdata, handles)
% hObject    handle to TmblOR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% OR
axes(handles.axes6)
a = imread('putri.jpg');
b = rgb2gray(a);

c = imread('bunga.jpg');
d = rgb2gray(c);

e = imresize(d,[1366 730]);
imshow(e)

f = or(b,e);

imshow (f)

% --- Executes on button press in TmblXOR.
function TmblXOR_Callback(hObject, eventdata, handles)
% hObject    handle to TmblXOR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% XOR
axes(handles.axes7)
a = imread('putri.jpg');
b = rgb2gray(a);

c = imread('bunga.jpg');
d = rgb2gray(c);

e = imresize(d,[1366 730]);
imshow(e)

f = xor(b,e);

imshow (f)

% --- Executes on button press in TmblNOT.
function TmblNOT_Callback(hObject, eventdata, handles)
% hObject    handle to TmblNOT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes8)
a = imread('putri.jpg');
b = im2bw(a, 0.5);

c = not(b);
imshow (c)

% --- Executes on button press in TmblREFLEKS.
function TmblREFLEKS_Callback(hObject, eventdata, handles)
% hObject    handle to TmblREFLEKS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes9)
a = imread('putri.jpg');
b = fliplr(a);
imshow(b)

% --- Executes on button press in TmblPENSKALAAN.
function TmblPENSKALAAN_Callback(hObject, eventdata, handles)
% hObject    handle to TmblPENSKALAAN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes10)
a = imread('bunga.jpg');
[m,n] = size(a);
skala = 1.5;
for x = 2:m
    for y = 2:n
        hasill(round(skala*(x-1)-1),round(skala*(y-1))) = a(x-1,y-1);
    end
end
subplot(1,2,1);imshow(a);title('Citra Asli');
subplot(2,2,2);imshow(a);title('Hasil Penskalaan');

% --- Executes on button press in TmblKELUAR.
function TmblKELUAR_Callback(hObject, eventdata, handles)
% hObject    handle to TmblKELUAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Keluar
delete(handles.figure1)
