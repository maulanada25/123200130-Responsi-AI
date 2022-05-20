function varargout = responsi(varargin)
% RESPONSI MATLAB code for responsi.fig
%      RESPONSI, by itself, creates a new RESPONSI or raises the existing
%      singleton*.
%
%      H = RESPONSI returns the handle to a new RESPONSI or the handle to
%      the existing singleton*.
%
%      RESPONSI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESPONSI.M with the given input arguments.
%
%      RESPONSI('Property','Value',...) creates a new RESPONSI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before responsi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to responsi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help responsi

% Last Modified by GUIDE v2.5 20-May-2022 09:16:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @responsi_OpeningFcn, ...
                   'gui_OutputFcn',  @responsi_OutputFcn, ...
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


% --- Executes just before responsi is made visible.
function responsi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to responsi (see VARARGIN)

% Choose default command line output for responsi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes responsi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = responsi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in button_130.
function button_130_Callback(hObject, eventdata, handles)
% hObject    handle to button_130 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
table1 = readcell('laptop_price.csv');
celltable1 = table1(52:100,[3 5 8 12 13]);
%header = readcell('laptop_price.csv', 'Range', 'C1,E1,H1,L1,M1');

set(handles.table_130,'Data',celltable1);

w = [1,3,2,4];
k = [1,1,0,0];

cellinput = table1(52:100,[5 8 12 13]);
tableData = cell2table(table1(52:100,[5 8 12 13]));
tableData.Properties.VariableNames = ['Name','Inches','Ram','Weight','Price'];

[m, n] = size(cellinput);
mtrx = cell2mat(cellinput);
R = zeros(m,n);

for j=1:n
    if k(j)==1
        R(:,j)=C(:,j)./max(C(:,j));
    else
        R(:,j)=min(C(:,j))./C(:,j);
    end
end
    V = zeros(1, m);
for i=1:m
    V(i) = sum(w.*R(i,:));
end

V = V.';
result = tableData





