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
temp5 = get(handles.edit6,'String');    %�Ƚ��ٶ�
%�ӿ���ͼ����ȡ���˵ĳ���
length1 = str2double(temp1);
length2 = str2double(temp2);
length3 = str2double(temp3);
length4 = str2double(temp4);
omega1 = str2double(temp5);
%��length�˳�����ɽṹ�����ʽ������ʹ�ú�������
length.a = length1;
length.b = length2;
length.c = length3;
length.d = length4;
%��ʼ����
% length1 = 101.6;
% length2 = 254;
% length3 = 177.8;
% length4 = 304.8;
% omega1 = 250;
alpha1 = 0;
hd = pi/180;
du = 180/pi;

%�жϸ��ĸ˻����ܷ�ɹ�����
    %1���ж��Ƿ������룬�����������
%�����������
clearAxes(handles);
    %�����Ҫ�û�����ĵط���Ϊ�գ�������ȷ�����������ش���
if(isempty(temp1)||isempty(temp2)||isempty(temp3)||isempty(temp4)||isempty(temp5))
    set(handles.edit7,'String','Error�����������������ݣ�');
    clearAxes(handles);
    return;
end
    %����û��ڻ�ȡ���ݵ�ͼ���������˷��������͵����ݣ�����ʾ�û����������� �������͵�����
    %���������� ���ַ�������str2double()��������NaN
    % ������isnana()�����������жϼ���
    % isnan() ��������ѯĿ��Ԫ�����Ƿ����NaNֵ��
if(isnan(length1)||isnan(length2)||isnan(length3)||isnan(length4)||isnan(omega1))
    set(handles.edit7,'String','Error����������ַ�����ֵ��');
    clearAxes(handles);
    return;
end
    %��������ĸ˳�����һ���ж��ܷ���ȷ�����˶�ϵ
	%�����Զ����жϺ���isEstablish() �ķ�����ֵ��������ͬ����Ӧ
	%����0���˳��������ĸ˻�����Ҫ�󣬲��ܹ���
	%����1�����Գɹ���������ҡ�ˡ�˫����ҡ��
	%����2�����Թ���һ��˫ҡ�˻�������������Ϊ�����ؼ���ģ�飬��������
if (isEstablish(length1,length2,length3,length4)==1)
    set(handles.edit7,'String','�ܳɹ����������ڷ���....');
elseif (isEstablish(length1,length2,length3,length4)==2)
	 set(handles.edit7,'String','������Ϊ˫ҡ�˻�������������������');
	 clearAxes(handles);
	 return;
else
    set(handles.edit7,'String','Error!��ǰ�˳����ܹ����ĸ˻���!');
    clearAxes(handles);
    return;
end

%���ú��������ĸ˻�����λ�ơ��ٶȡ����ٶ�
for n1 = 1:361
	theta1 = (n1-1)*hd;		% ���Ƕ�ת��Ϊ������
	[theta,omega,alpha] = analysis_data(theta1,omega1,alpha1,length1,length2,length3,length4);
	theta2(n1) = theta(1);		% ��2�Ľ�λ��
	theta3(n1) = theta(2);		% ��3�Ľ�λ��
	
	omega2(n1) = omega(1);		% ��2�Ľ��ٶ�
	omega3(n1) = omega(2);		% ��3�Ľ��ٶ�
	alpha2(n1) = alpha(1);	% ��2�ĽǼ��ٶ�
	alpha3(n1) = alpha(2);	% ��3�ĽǼ��ٶ�
end
thetaArr = {theta2,theta3}; %��theta2��theta3�����Ԫ���������ʽ
omegaArr = {omega2,omega3}; %��omega2��omega3�����Ԫ���������ʽ
alphaArr = {alpha2,alpha3}; %��alpha2��alpha3�����Ԫ���������ʽ

%%
% ����ͼ��
%����ǰ�ĸ�ͼ�����������ִ�����
%����1��ʹ���Լ�����ĺ���
drawFigure1(handles,thetaArr,omegaArr,alphaArr,length);
%����2��ֱ�ӻ�ͼ,��ϸ������ײ�
 
% 4�������ĸ˻����˶�����
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
    m(j) = getframe;		%getframe�����������ǲ�����������ͼ����ΪӰƬ֡��
end
set(handles.edit7,'String','�����ɹ���ͼ������');
movie(handles.axes5,m,1);		%movie() ���������Ŷ���
return;


%%
%������������ǰ�ĸ�ͼ��
% n1 = 1:361;
% % ����λ����ͼ
% axes(handles.axes1);
% plot(n1,theta2*du,n1,theta3*du,'k');	% ��2�͸�3��Ƕȱ仯��������λ��ͼ
% xlabel('����ת�� \theta1/\circ');
% ylabel('��λ��/\circ');
% grid on;
% hold on;
% 
% %���ƽ��ٶ���ͼ
% axes(handles.axes2);
% plot(n1,omega2,n1,omega3,'k');
% xlabel('����ת�� \theta1/\circ');
% ylabel('���ٶ�/ rad\cdots^{-1}');
% grid on;
% hold on;
%     
% % ���ƽǼ��ٶ�ͼ
% axes(handles.axes3);
% plot(n1,alpha2,n1,alpha3,'k');
% xlabel('����ת�� \theta1/\circ');
% ylabel('�Ǽ��ٶ�/rad\cdots^{-2}');
% grid on;
% hold on;
%  
% %���ƽ����ĸ˻���ͼ�����
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
