function varargout = analysis_gui(varargin)
% ANALYSIS_GUI MATLAB code for analysis_gui.fig
%      ANALYSIS_GUI, by itself, creates a new ANALYSIS_GUI or raises the existing
%      singleton*.
%
%      H = ANALYSIS_GUI returns the handle to a new ANALYSIS_GUI or the handle to
%      the existing singleton*.
%
%      ANALYSIS_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ANALYSIS_GUI.M with the given input arguments.
%
%      ANALYSIS_GUI('Property','Value',...) creates a new ANALYSIS_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before analysis_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to analysis_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help analysis_gui

% Last Modified by GUIDE v2.5 16-Jun-2021 17:21:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @analysis_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @analysis_gui_OutputFcn, ...
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


% --- Executes just before analysis_gui is made visible.
function analysis_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to analysis_gui (see VARARGIN)

% Choose default command line output for analysis_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes analysis_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = analysis_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

temp1 = get(handles.edit2,'String');
temp2 = get(handles.edit3,'String');
temp3 = get(handles.edit4,'String');
temp4 = get(handles.edit5,'String');
temp5 = get(handles.edit6,'String');    %匀角速度
%从控制图窗获取各杆的长度
length1 = str2double(temp1);
length2 = str2double(temp2);
length3 = str2double(temp3);
length4 = str2double(temp4);
omega1 = str2double(temp5);
%将length杆长打包成结构体的形式，方便使用函数调用
length.a = length1;
length.b = length2;
length.c = length3;
length.d = length4;
%初始数据
% length1 = 101.6;
% length2 = 254;
% length3 = 177.8;
% length4 = 304.8;
% omega1 = 250;
alpha1 = 0;
hd = pi/180;
du = 180/pi;

%判断该四杆机构能否成功构建
    %1、判断是否有输入，或者输入错误、
%清空坐标区域
clearAxes(handles);
    %如果需要用户输入的地方有为空，则不能正确而分析，返回错误
if(isempty(temp1)||isempty(temp2)||isempty(temp3)||isempty(temp4)||isempty(temp5))
    set(handles.edit7,'String','Error！请输入完整的数据！');
    clearAxes(handles);
    return;
end
    %如果用户在获取数据的图框内输入了非数字类型的数据，则提示用户输入正常的 数字类型的数据
    %根据输入是 ‘字符’，则str2double()函数返回NaN
    % 在利用isnana()函数，进行判断即可
    % isnan() 函数：查询目标元素中是否包含NaN值，
if(isnan(length1)||isnan(length2)||isnan(length3)||isnan(length4)||isnan(omega1))
    set(handles.edit7,'String','Error！请输入非字符的数值！');
    clearAxes(handles);
    return;
end
    %根据输入的杆长来进一步判断能否正确构建运动系
	%根据自定义判断函数isEstablish() 的返回数值来做出不同的响应
	%返回0：杆长不符合四杆机构的要求，不能构建
	%返回1：可以成功构建曲柄摇杆、双曲柄摇杆
	%返回2：可以构建一个双摇杆机构，但本程序为设计相关计算模块，不做分析
if (isEstablish(length1,length2,length3,length4)==1)
    set(handles.edit7,'String','能成功构建，正在分析....');
elseif (isEstablish(length1,length2,length3,length4)==2)
	 set(handles.edit7,'String','该用例为双摇杆机构，本程序不做分析！');
	 clearAxes(handles);
	 return;
else
    set(handles.edit7,'String','Error!当前杆长不能构建四杆机构!');
    clearAxes(handles);
    return;
end

%调用函数计算四杆机构的位移、速度、加速度
for n1 = 1:361
	theta1 = (n1-1)*hd;		% 将角度转换为弧度制
	[theta,omega,alpha] = analysis_data(theta1,omega1,alpha1,length1,length2,length3,length4);
	theta2(n1) = theta(1);		% 杆2的角位移
	theta3(n1) = theta(2);		% 杆3的角位移
	
	omega2(n1) = omega(1);		% 杆2的角速度
	omega3(n1) = omega(2);		% 杆3的角速度
	alpha2(n1) = alpha(1);	% 杆2的角加速度
	alpha3(n1) = alpha(2);	% 杆3的角加速度
end
thetaArr = {theta2,theta3}; %将theta2和theta3打包成元胞数组的形式
omegaArr = {omega2,omega3}; %将omega2和omega3打包成元胞数组的形式
alphaArr = {alpha2,alpha3}; %将alpha2和alpha3打包成元胞数组的形式

%%
% 绘制图形
%对于前四个图像，有以下两种处理方法
%方案1：使用自己定义的函数
drawFigure1(handles,thetaArr,omegaArr,alphaArr,length);
%方案2：直接绘图,详细代码见底部
 
% 4、铰链四杆机构运动仿真
m = moviein(20) ;
j=0;
axes(handles.axes5);
for n1= 1:5 :360
    cla(handles.axes5);
    j=j+1;
    x(1)=0;
    y(1)=0;
    x(2)=length1* cos((n1 - 1)*hd);
    y(2)=length1* sin((n1 - 1)*hd);
    x(3)=length4+length3 * cos(theta3(n1));
    y(3)= length3* sin( theta3(n1));
    x(4)=length4;
    y(4)=0;
    x(5)=0;
    y(5)=0;
    plot(handles.axes5,x,y);
    grid on;hold on;
    plot(x(1),y(1),'o');
    plot(x(2),y(2),'o');
    plot(x(3),y(3),'o');
    plot(x(4),y(4),'o');
    axis([-150 350   -150 200]);
    xlabel('mm');
    ylabel('mm');
    m(j) = getframe;		%getframe函数的作用是捕获坐标区或图窗作为影片帧。
end
set(handles.edit7,'String','分析成功，图形如下');
movie(handles.axes5,m,1);		%movie() 函数，播放动画
return;


%%
%方案二，绘制前四个图像
% n1 = 1:361;
% % 绘制位移线图
% axes(handles.axes1);
% plot(n1,theta2*du,n1,theta3*du,'k');	% 杆2和杆3随角度变化所产生的位移图
% xlabel('曲柄转角 \theta1/\circ');
% ylabel('角位移/\circ');
% grid on;
% hold on;
% 
% %绘制角速度线图
% axes(handles.axes2);
% plot(n1,omega2,n1,omega3,'k');
% xlabel('曲柄转角 \theta1/\circ');
% ylabel('角速度/ rad\cdots^{-1}');
% grid on;
% hold on;
%     
% % 绘制角加速度图
% axes(handles.axes3);
% plot(n1,alpha2,n1,alpha3,'k');
% xlabel('曲柄转角 \theta1/\circ');
% ylabel('角加速度/rad\cdots^{-2}');
% grid on;
% hold on;
%  
% %绘制铰链四杆机构图形输出
% 
% xt(1)=0;
% yt(1)=0;
% xt(2)= length1*cos(70* hd);
% yt(2)= length1*sin(70* hd);
% xt(3)= length4+length3*cos( theta3(70));
% yt(3)= length3*sin( theta3(70));
% xt(4)=length4;
% yt(4)=0;
% xt(5)=0;
% yt(5)=0;
% axes(handles.axes4);
% hold on;
% plot(xt(1),yt(1),'o');
% plot(xt(2),yt(2),'o');
% plot(xt(3),yt(3),' o');
% plot(xt(4),yt(4),'o');
% plot(xt,yt);
% xlabel('mm');
% ylabel('mm');
% set(handles.axes4,'XLim',[-50 350]);
% set(handles.axes4,'YLim',[-20 200]);
% grid on;
