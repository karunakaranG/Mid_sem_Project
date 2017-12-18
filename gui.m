function varargout = gui(varargin)


% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 26-Oct-2015 19:25:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
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


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%global le;
%global re;
%global no;
%global mo;
%global img;
[filename, pathname] = uigetfile({'*.bmp';'*.jpg';'*.gif';'*.*'}, 'Pick an Image File');
img=imread([pathname,filename]);
din=[pathname,filename];
[le,re,no,mo]=demo(din);

setappdata(handles.pushbutton1,'imgs',img);
setappdata(handles.pushbutton1,'lee',le);
setappdata(handles.pushbutton1,'ree',re);
setappdata(handles.pushbutton1,'nno',no);
setappdata(handles.pushbutton1,'mmo',mo);
%data = struct('leye',le,'reye',re,'nose',no,'mouth',mo);
%	hObject.User = data;
%ab=imread(le);
%bb=imread(re);
%cb=imread(no);
%db=imread(mo);
%set(handles.edit1,'String',[pathname,filename]);
%a = get(handles.edit1,'String');
axes(handles.imgdisplay1);
imagesc(img);
set(handles.imgdisplay1,'Visible','off');

axes(handles.imgdisplay2);
imagesc(le);
set(handles.imgdisplay2,'Visible','off');

axes(handles.imgdisplay3);
imagesc(re);
set(handles.imgdisplay3,'Visible','off');

axes(handles.imgdisplay4);
imagesc(no);
set(handles.imgdisplay4,'Visible','off');

axes(handles.imgdisplay5);
imagesc(mo);
set(handles.imgdisplay5,'Visible','off');
guidata(hObject, handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%h = findobj('Tag','pushbutton1_Callback');
%	data = h.User;
	% For R2014a and earlier: 
	% data = get(h,'UserData'); 
%	lee=data.leye;
 %   ree=data.reye;
  %  nnose=data.nose;
  %  mmouth=data.mouth;
%imshow(le);
%imshow(re);
%imshow(no);
%imshow(mo);
imk=getappdata(handles.pushbutton1,'imgs');
leeye = getappdata(handles.pushbutton1,'lee');
reeye = getappdata(handles.pushbutton1,'ree');
nnose = getappdata(handles.pushbutton1,'nno');
mmouth = getappdata(handles.pushbutton1,'mmo');
output=analysis(leeye,reeye,nnose,mmouth);
img2=strcat('C:\Users\karuna\Documents\MATLAB\finalreview\no.png');
img4=imread(img2);
if(eq(output,1))
a=imk;
else
a=img4;
end
axes(handles.imgdisplay6);
imagesc(a);
set(handles.imgdisplay6,'Visible','off');
guidata(hObject, handles);
    