�
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02unknown8��	
�
Adam/Activation/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/Activation/bias/v
}
*Adam/Activation/bias/v/Read/ReadVariableOpReadVariableOpAdam/Activation/bias/v*
_output_shapes
:*
dtype0
�
Adam/Activation/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*)
shared_nameAdam/Activation/kernel/v
�
,Adam/Activation/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Activation/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/FullyConnected-1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_nameAdam/FullyConnected-1/bias/v
�
0Adam/FullyConnected-1/bias/v/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/FullyConnected-1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
�*/
shared_name Adam/FullyConnected-1/kernel/v
�
2Adam/FullyConnected-1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/kernel/v*
_output_shapes
:	
�*
dtype0
�
 Adam/User-Embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*1
shared_name" Adam/User-Embedding/embeddings/v
�
4Adam/User-Embedding/embeddings/v/Read/ReadVariableOpReadVariableOp Adam/User-Embedding/embeddings/v* 
_output_shapes
:
��*
dtype0
�
!Adam/Movie-Embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ѓ*2
shared_name#!Adam/Movie-Embedding/embeddings/v
�
5Adam/Movie-Embedding/embeddings/v/Read/ReadVariableOpReadVariableOp!Adam/Movie-Embedding/embeddings/v* 
_output_shapes
:
ѓ*
dtype0
�
Adam/Activation/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/Activation/bias/m
}
*Adam/Activation/bias/m/Read/ReadVariableOpReadVariableOpAdam/Activation/bias/m*
_output_shapes
:*
dtype0
�
Adam/Activation/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*)
shared_nameAdam/Activation/kernel/m
�
,Adam/Activation/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Activation/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/FullyConnected-1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_nameAdam/FullyConnected-1/bias/m
�
0Adam/FullyConnected-1/bias/m/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/FullyConnected-1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
�*/
shared_name Adam/FullyConnected-1/kernel/m
�
2Adam/FullyConnected-1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/kernel/m*
_output_shapes
:	
�*
dtype0
�
 Adam/User-Embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*1
shared_name" Adam/User-Embedding/embeddings/m
�
4Adam/User-Embedding/embeddings/m/Read/ReadVariableOpReadVariableOp Adam/User-Embedding/embeddings/m* 
_output_shapes
:
��*
dtype0
�
!Adam/Movie-Embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ѓ*2
shared_name#!Adam/Movie-Embedding/embeddings/m
�
5Adam/Movie-Embedding/embeddings/m/Read/ReadVariableOpReadVariableOp!Adam/Movie-Embedding/embeddings/m* 
_output_shapes
:
ѓ*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
v
Activation/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameActivation/bias
o
#Activation/bias/Read/ReadVariableOpReadVariableOpActivation/bias*
_output_shapes
:*
dtype0

Activation/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*"
shared_nameActivation/kernel
x
%Activation/kernel/Read/ReadVariableOpReadVariableOpActivation/kernel*
_output_shapes
:	�*
dtype0
�
FullyConnected-1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameFullyConnected-1/bias
|
)FullyConnected-1/bias/Read/ReadVariableOpReadVariableOpFullyConnected-1/bias*
_output_shapes	
:�*
dtype0
�
FullyConnected-1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
�*(
shared_nameFullyConnected-1/kernel
�
+FullyConnected-1/kernel/Read/ReadVariableOpReadVariableOpFullyConnected-1/kernel*
_output_shapes
:	
�*
dtype0
�
User-Embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��**
shared_nameUser-Embedding/embeddings
�
-User-Embedding/embeddings/Read/ReadVariableOpReadVariableOpUser-Embedding/embeddings* 
_output_shapes
:
��*
dtype0
�
Movie-Embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ѓ*+
shared_nameMovie-Embedding/embeddings
�
.Movie-Embedding/embeddings/Read/ReadVariableOpReadVariableOpMovie-Embedding/embeddings* 
_output_shapes
:
ѓ*
dtype0
w
serving_default_ItemPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
w
serving_default_UserPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_Itemserving_default_UserUser-Embedding/embeddingsMovie-Embedding/embeddingsFullyConnected-1/kernelFullyConnected-1/biasActivation/kernelActivation/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_8659580

NoOpNoOp
�Y
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�X
value�XB�X B�X
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-2
layer-10
layer-11
layer_with_weights-3
layer-12
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*

_init_input_shape* 

_init_input_shape* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 
embeddings*
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'
embeddings*
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator* 
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_random_generator* 
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses* 
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator* 
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias*
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]_random_generator* 
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

dkernel
ebias*
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses* 
.
 0
'1
U2
V3
d4
e5*
.
 0
'1
U2
V3
d4
e5*
	
l0* 
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
rtrace_0
strace_1
ttrace_2
utrace_3* 
6
vtrace_0
wtrace_1
xtrace_2
ytrace_3* 
* 
�
ziter

{beta_1

|beta_2
	}decay
~learning_rate m�'m�Um�Vm�dm�em� v�'v�Uv�Vv�dv�ev�*

serving_default* 
* 
* 

 0*

 0*
	
l0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
nh
VARIABLE_VALUEMovie-Embedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

'0*

'0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
mg
VARIABLE_VALUEUser-Embedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

U0
V1*

U0
V1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
ga
VARIABLE_VALUEFullyConnected-1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEFullyConnected-1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

d0
e1*

d0
e1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEActivation/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEActivation/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�trace_0* 
* 
j
0
1
2
3
4
5
6
7
	8

9
10
11
12
13*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
	
l0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
��
VARIABLE_VALUE!Adam/Movie-Embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/User-Embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/FullyConnected-1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/FullyConnected-1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/Activation/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/Activation/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/Movie-Embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/User-Embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/FullyConnected-1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/FullyConnected-1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/Activation/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/Activation/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename.Movie-Embedding/embeddings/Read/ReadVariableOp-User-Embedding/embeddings/Read/ReadVariableOp+FullyConnected-1/kernel/Read/ReadVariableOp)FullyConnected-1/bias/Read/ReadVariableOp%Activation/kernel/Read/ReadVariableOp#Activation/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp5Adam/Movie-Embedding/embeddings/m/Read/ReadVariableOp4Adam/User-Embedding/embeddings/m/Read/ReadVariableOp2Adam/FullyConnected-1/kernel/m/Read/ReadVariableOp0Adam/FullyConnected-1/bias/m/Read/ReadVariableOp,Adam/Activation/kernel/m/Read/ReadVariableOp*Adam/Activation/bias/m/Read/ReadVariableOp5Adam/Movie-Embedding/embeddings/v/Read/ReadVariableOp4Adam/User-Embedding/embeddings/v/Read/ReadVariableOp2Adam/FullyConnected-1/kernel/v/Read/ReadVariableOp0Adam/FullyConnected-1/bias/v/Read/ReadVariableOp,Adam/Activation/kernel/v/Read/ReadVariableOp*Adam/Activation/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_save_8660107
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameMovie-Embedding/embeddingsUser-Embedding/embeddingsFullyConnected-1/kernelFullyConnected-1/biasActivation/kernelActivation/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount!Adam/Movie-Embedding/embeddings/m Adam/User-Embedding/embeddings/mAdam/FullyConnected-1/kernel/mAdam/FullyConnected-1/bias/mAdam/Activation/kernel/mAdam/Activation/bias/m!Adam/Movie-Embedding/embeddings/v Adam/User-Embedding/embeddings/vAdam/FullyConnected-1/kernel/vAdam/FullyConnected-1/bias/vAdam/Activation/kernel/vAdam/Activation/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__traced_restore_8660198�
�

f
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659313

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������
C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������
*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������
a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������
:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
d
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659135

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8659784

inputs,
embedding_lookup_8659778:
��
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_8659778Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/8659778*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/8659778*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
)__inference_model_2_layer_call_fn_8659484
user
item
unknown:
��
	unknown_0:
ѓ
	unknown_1:	
�
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalluseritemunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_8659451o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:���������

_user_specified_nameUser:MI
'
_output_shapes
:���������

_user_specified_nameItem
�
o
C__inference_Concat_layer_call_and_return_conditional_losses_8659873
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������
W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�

e
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659366

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�5
�
D__inference_model_2_layer_call_and_return_conditional_losses_8659216

inputs
inputs_1*
user_embedding_8659093:
��+
movie_embedding_8659111:
ѓ+
fullyconnected_1_8659172:	
�'
fullyconnected_1_8659174:	�%
activation_8659196:	� 
activation_8659198:
identity��"Activation/StatefulPartitionedCall�(FullyConnected-1/StatefulPartitionedCall�'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_8659093*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8659092�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_8659111*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8659110�
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8659120�
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8659128�
dropout_8/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659135�
dropout_9/PartitionedCallPartitionedCall%FlattenUsers/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659142�
Concat/PartitionedCallPartitionedCall"dropout_8/PartitionedCall:output:0"dropout_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_8659151�
dropout_10/PartitionedCallPartitionedCallConcat/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659158�
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0fullyconnected_1_8659172fullyconnected_1_8659174*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8659171�
dropout_11/PartitionedCallPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659182�
"Activation/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0activation_8659196activation_8659198*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_8659195�
lambda_2/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659209�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_8659111* 
_output_shapes
:
ѓ*
dtype0�
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: p
IdentityIdentity!lambda_2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^Activation/StatefulPartitionedCall)^FullyConnected-1/StatefulPartitionedCall(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2H
"Activation/StatefulPartitionedCall"Activation/StatefulPartitionedCall2T
(FullyConnected-1/StatefulPartitionedCall(FullyConnected-1/StatefulPartitionedCall2R
'Movie-Embedding/StatefulPartitionedCall'Movie-Embedding/StatefulPartitionedCall2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&User-Embedding/StatefulPartitionedCall&User-Embedding/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

e
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659343

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�X
�
D__inference_model_2_layer_call_and_return_conditional_losses_8659746
inputs_0
inputs_1;
'user_embedding_embedding_lookup_8659674:
��<
(movie_embedding_embedding_lookup_8659680:
ѓB
/fullyconnected_1_matmul_readvariableop_resource:	
�?
0fullyconnected_1_biasadd_readvariableop_resource:	�<
)activation_matmul_readvariableop_resource:	�8
*activation_biasadd_readvariableop_resource:
identity��!Activation/BiasAdd/ReadVariableOp� Activation/MatMul/ReadVariableOp�'FullyConnected-1/BiasAdd/ReadVariableOp�&FullyConnected-1/MatMul/ReadVariableOp� Movie-Embedding/embedding_lookup�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�User-Embedding/embedding_lookupf
User-Embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
User-Embedding/embedding_lookupResourceGather'user_embedding_embedding_lookup_8659674User-Embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@User-Embedding/embedding_lookup/8659674*+
_output_shapes
:���������*
dtype0�
(User-Embedding/embedding_lookup/IdentityIdentity(User-Embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@User-Embedding/embedding_lookup/8659674*+
_output_shapes
:����������
*User-Embedding/embedding_lookup/Identity_1Identity1User-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������g
Movie-Embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:����������
 Movie-Embedding/embedding_lookupResourceGather(movie_embedding_embedding_lookup_8659680Movie-Embedding/Cast:y:0*
Tindices0*;
_class1
/-loc:@Movie-Embedding/embedding_lookup/8659680*+
_output_shapes
:���������*
dtype0�
)Movie-Embedding/embedding_lookup/IdentityIdentity)Movie-Embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Movie-Embedding/embedding_lookup/8659680*+
_output_shapes
:����������
+Movie-Embedding/embedding_lookup/Identity_1Identity2Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������c
FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
FlattenUsers/ReshapeReshape3User-Embedding/embedding_lookup/Identity_1:output:0FlattenUsers/Const:output:0*
T0*'
_output_shapes
:���������d
FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
FlattenMovies/ReshapeReshape4Movie-Embedding/embedding_lookup/Identity_1:output:0FlattenMovies/Const:output:0*
T0*'
_output_shapes
:���������\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_8/dropout/MulMulFlattenMovies/Reshape:output:0 dropout_8/dropout/Const:output:0*
T0*'
_output_shapes
:���������e
dropout_8/dropout/ShapeShapeFlattenMovies/Reshape:output:0*
T0*
_output_shapes
:�
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������^
dropout_8/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_8/dropout/SelectV2SelectV2"dropout_8/dropout/GreaterEqual:z:0dropout_8/dropout/Mul:z:0"dropout_8/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������\
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_9/dropout/MulMulFlattenUsers/Reshape:output:0 dropout_9/dropout/Const:output:0*
T0*'
_output_shapes
:���������d
dropout_9/dropout/ShapeShapeFlattenUsers/Reshape:output:0*
T0*
_output_shapes
:�
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0e
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������^
dropout_9/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_9/dropout/SelectV2SelectV2"dropout_9/dropout/GreaterEqual:z:0dropout_9/dropout/Mul:z:0"dropout_9/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������T
Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
Concat/concatConcatV2#dropout_8/dropout/SelectV2:output:0#dropout_9/dropout/SelectV2:output:0Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������
]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_10/dropout/MulMulConcat/concat:output:0!dropout_10/dropout/Const:output:0*
T0*'
_output_shapes
:���������
^
dropout_10/dropout/ShapeShapeConcat/concat:output:0*
T0*
_output_shapes
:�
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*'
_output_shapes
:���������
*
dtype0f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������
_
dropout_10/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_10/dropout/SelectV2SelectV2#dropout_10/dropout/GreaterEqual:z:0dropout_10/dropout/Mul:z:0#dropout_10/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������
�
&FullyConnected-1/MatMul/ReadVariableOpReadVariableOp/fullyconnected_1_matmul_readvariableop_resource*
_output_shapes
:	
�*
dtype0�
FullyConnected-1/MatMulMatMul$dropout_10/dropout/SelectV2:output:0.FullyConnected-1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'FullyConnected-1/BiasAdd/ReadVariableOpReadVariableOp0fullyconnected_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FullyConnected-1/BiasAddBiasAdd!FullyConnected-1/MatMul:product:0/FullyConnected-1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
FullyConnected-1/ReluRelu!FullyConnected-1/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_11/dropout/MulMul#FullyConnected-1/Relu:activations:0!dropout_11/dropout/Const:output:0*
T0*(
_output_shapes
:����������k
dropout_11/dropout/ShapeShape#FullyConnected-1/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������_
dropout_11/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_11/dropout/SelectV2SelectV2#dropout_11/dropout/GreaterEqual:z:0dropout_11/dropout/Mul:z:0#dropout_11/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
 Activation/MatMul/ReadVariableOpReadVariableOp)activation_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Activation/MatMulMatMul$dropout_11/dropout/SelectV2:output:0(Activation/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!Activation/BiasAdd/ReadVariableOpReadVariableOp*activation_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Activation/BiasAddBiasAddActivation/MatMul:product:0)Activation/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l
Activation/SigmoidSigmoidActivation/BiasAdd:output:0*
T0*'
_output_shapes
:���������S
lambda_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �@v
lambda_2/mulMullambda_2/mul/x:output:0Activation/Sigmoid:y:0*
T0*'
_output_shapes
:���������S
lambda_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?r
lambda_2/addAddV2lambda_2/mul:z:0lambda_2/add/y:output:0*
T0*'
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp(movie_embedding_embedding_lookup_8659680* 
_output_shapes
:
ѓ*
dtype0�
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentitylambda_2/add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^Activation/BiasAdd/ReadVariableOp!^Activation/MatMul/ReadVariableOp(^FullyConnected-1/BiasAdd/ReadVariableOp'^FullyConnected-1/MatMul/ReadVariableOp!^Movie-Embedding/embedding_lookup=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp ^User-Embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2F
!Activation/BiasAdd/ReadVariableOp!Activation/BiasAdd/ReadVariableOp2D
 Activation/MatMul/ReadVariableOp Activation/MatMul/ReadVariableOp2R
'FullyConnected-1/BiasAdd/ReadVariableOp'FullyConnected-1/BiasAdd/ReadVariableOp2P
&FullyConnected-1/MatMul/ReadVariableOp&FullyConnected-1/MatMul/ReadVariableOp2D
 Movie-Embedding/embedding_lookup Movie-Embedding/embedding_lookup2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2B
User-Embedding/embedding_lookupUser-Embedding/embedding_lookup:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
a
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659985

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �@T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:���������J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
addAddV2mul:z:0add/y:output:0*
T0*'
_output_shapes
:���������O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659142

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8659806

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�;
�
D__inference_model_2_layer_call_and_return_conditional_losses_8659550
user
item*
user_embedding_8659521:
��+
movie_embedding_8659524:
ѓ+
fullyconnected_1_8659533:	
�'
fullyconnected_1_8659535:	�%
activation_8659539:	� 
activation_8659541:
identity��"Activation/StatefulPartitionedCall�(FullyConnected-1/StatefulPartitionedCall�'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�"dropout_10/StatefulPartitionedCall�"dropout_11/StatefulPartitionedCall�!dropout_8/StatefulPartitionedCall�!dropout_9/StatefulPartitionedCall�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_8659521*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8659092�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallitemmovie_embedding_8659524*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8659110�
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8659120�
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8659128�
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall&FlattenMovies/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659366�
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall%FlattenUsers/PartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659343�
Concat/PartitionedCallPartitionedCall*dropout_8/StatefulPartitionedCall:output:0*dropout_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_8659151�
"dropout_10/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659313�
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0fullyconnected_1_8659533fullyconnected_1_8659535*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8659171�
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659280�
"Activation/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0activation_8659539activation_8659541*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_8659195�
lambda_2/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659247�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_8659524* 
_output_shapes
:
ѓ*
dtype0�
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: p
IdentityIdentity!lambda_2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^Activation/StatefulPartitionedCall)^FullyConnected-1/StatefulPartitionedCall(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2H
"Activation/StatefulPartitionedCall"Activation/StatefulPartitionedCall2T
(FullyConnected-1/StatefulPartitionedCall(FullyConnected-1/StatefulPartitionedCall2R
'Movie-Embedding/StatefulPartitionedCall'Movie-Embedding/StatefulPartitionedCall2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&User-Embedding/StatefulPartitionedCall&User-Embedding/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:M I
'
_output_shapes
:���������

_user_specified_nameUser:MI
'
_output_shapes
:���������

_user_specified_nameItem
�
e
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659888

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������
[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������
:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
d
+__inference_dropout_9_layer_call_fn_8659843

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659343o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
K
/__inference_FlattenMovies_layer_call_fn_8659789

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8659128`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
G__inference_Activation_layer_call_and_return_conditional_losses_8659195

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659182

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8659920

inputs1
matmul_readvariableop_resource:	
�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
%__inference_signature_wrapper_8659580
item
user
unknown:
��
	unknown_0:
ѓ
	unknown_1:	
�
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalluseritemunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_8659073o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:���������

_user_specified_nameItem:MI
'
_output_shapes
:���������

_user_specified_nameUser
�
H
,__inference_dropout_11_layer_call_fn_8659925

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659182a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
1__inference_Movie-Embedding_layer_call_fn_8659753

inputs
unknown:
ѓ
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8659110s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
G
+__inference_dropout_8_layer_call_fn_8659811

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659135`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659209

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �@T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:���������J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
addAddV2mul:z:0add/y:output:0*
T0*'
_output_shapes
:���������O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
f
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8659795

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�w
�
#__inference__traced_restore_8660198
file_prefix?
+assignvariableop_movie_embedding_embeddings:
ѓ@
,assignvariableop_1_user_embedding_embeddings:
��=
*assignvariableop_2_fullyconnected_1_kernel:	
�7
(assignvariableop_3_fullyconnected_1_bias:	�7
$assignvariableop_4_activation_kernel:	�0
"assignvariableop_5_activation_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: #
assignvariableop_13_total: #
assignvariableop_14_count: I
5assignvariableop_15_adam_movie_embedding_embeddings_m:
ѓH
4assignvariableop_16_adam_user_embedding_embeddings_m:
��E
2assignvariableop_17_adam_fullyconnected_1_kernel_m:	
�?
0assignvariableop_18_adam_fullyconnected_1_bias_m:	�?
,assignvariableop_19_adam_activation_kernel_m:	�8
*assignvariableop_20_adam_activation_bias_m:I
5assignvariableop_21_adam_movie_embedding_embeddings_v:
ѓH
4assignvariableop_22_adam_user_embedding_embeddings_v:
��E
2assignvariableop_23_adam_fullyconnected_1_kernel_v:	
�?
0assignvariableop_24_adam_fullyconnected_1_bias_v:	�?
,assignvariableop_25_adam_activation_kernel_v:	�8
*assignvariableop_26_adam_activation_bias_v:
identity_28��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp+assignvariableop_movie_embedding_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp,assignvariableop_1_user_embedding_embeddingsIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp*assignvariableop_2_fullyconnected_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp(assignvariableop_3_fullyconnected_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_activation_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_activation_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp5assignvariableop_15_adam_movie_embedding_embeddings_mIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_user_embedding_embeddings_mIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp2assignvariableop_17_adam_fullyconnected_1_kernel_mIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp0assignvariableop_18_adam_fullyconnected_1_bias_mIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_activation_kernel_mIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_activation_bias_mIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp5assignvariableop_21_adam_movie_embedding_embeddings_vIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_user_embedding_embeddings_vIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp2assignvariableop_23_adam_fullyconnected_1_kernel_vIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp0assignvariableop_24_adam_fullyconnected_1_bias_vIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_activation_kernel_vIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_activation_bias_vIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
d
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659848

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8659767

inputs,
embedding_lookup_8659757:
ѓ
identity��<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_8659757Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/8659757*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/8659757*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_8659757* 
_output_shapes
:
ѓ*
dtype0�
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659821

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
)__inference_model_2_layer_call_fn_8659602
inputs_0
inputs_1
unknown:
��
	unknown_0:
ѓ
	unknown_1:	
�
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_8659216o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�

e
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659833

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
2__inference_FullyConnected-1_layer_call_fn_8659909

inputs
unknown:	
�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8659171p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

e
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659860

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
+__inference_dropout_8_layer_call_fn_8659816

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659366o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_Activation_layer_call_fn_8659956

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_8659195o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659947

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8659171

inputs1
matmul_readvariableop_resource:	
�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

f
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659900

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������
C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������
*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������
a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������
:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
)__inference_model_2_layer_call_fn_8659620
inputs_0
inputs_1
unknown:
��
	unknown_0:
ѓ
	unknown_1:	
�
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_8659451o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�;
�
D__inference_model_2_layer_call_and_return_conditional_losses_8659451

inputs
inputs_1*
user_embedding_8659422:
��+
movie_embedding_8659425:
ѓ+
fullyconnected_1_8659434:	
�'
fullyconnected_1_8659436:	�%
activation_8659440:	� 
activation_8659442:
identity��"Activation/StatefulPartitionedCall�(FullyConnected-1/StatefulPartitionedCall�'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�"dropout_10/StatefulPartitionedCall�"dropout_11/StatefulPartitionedCall�!dropout_8/StatefulPartitionedCall�!dropout_9/StatefulPartitionedCall�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_8659422*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8659092�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_8659425*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8659110�
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8659120�
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8659128�
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall&FlattenMovies/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659366�
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall%FlattenUsers/PartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659343�
Concat/PartitionedCallPartitionedCall*dropout_8/StatefulPartitionedCall:output:0*dropout_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_8659151�
"dropout_10/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659313�
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0fullyconnected_1_8659434fullyconnected_1_8659436*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8659171�
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659280�
"Activation/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0activation_8659440activation_8659442*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_8659195�
lambda_2/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659247�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_8659425* 
_output_shapes
:
ѓ*
dtype0�
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: p
IdentityIdentity!lambda_2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^Activation/StatefulPartitionedCall)^FullyConnected-1/StatefulPartitionedCall(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2H
"Activation/StatefulPartitionedCall"Activation/StatefulPartitionedCall2T
(FullyConnected-1/StatefulPartitionedCall(FullyConnected-1/StatefulPartitionedCall2R
'Movie-Embedding/StatefulPartitionedCall'Movie-Embedding/StatefulPartitionedCall2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&User-Embedding/StatefulPartitionedCall&User-Embedding/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659993

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �@T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:���������J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
addAddV2mul:z:0add/y:output:0*
T0*'
_output_shapes
:���������O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
G
+__inference_dropout_9_layer_call_fn_8659838

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659142`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
G__inference_Activation_layer_call_and_return_conditional_losses_8659967

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
m
C__inference_Concat_layer_call_and_return_conditional_losses_8659151

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������
W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
0__inference_User-Embedding_layer_call_fn_8659774

inputs
unknown:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8659092s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
)__inference_model_2_layer_call_fn_8659231
user
item
unknown:
��
	unknown_0:
ѓ
	unknown_1:	
�
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalluseritemunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_8659216o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:���������

_user_specified_nameUser:MI
'
_output_shapes
:���������

_user_specified_nameItem
�8
�
"__inference__wrapped_model_8659073
user
itemC
/model_2_user_embedding_embedding_lookup_8659033:
��D
0model_2_movie_embedding_embedding_lookup_8659039:
ѓJ
7model_2_fullyconnected_1_matmul_readvariableop_resource:	
�G
8model_2_fullyconnected_1_biasadd_readvariableop_resource:	�D
1model_2_activation_matmul_readvariableop_resource:	�@
2model_2_activation_biasadd_readvariableop_resource:
identity��)model_2/Activation/BiasAdd/ReadVariableOp�(model_2/Activation/MatMul/ReadVariableOp�/model_2/FullyConnected-1/BiasAdd/ReadVariableOp�.model_2/FullyConnected-1/MatMul/ReadVariableOp�(model_2/Movie-Embedding/embedding_lookup�'model_2/User-Embedding/embedding_lookupj
model_2/User-Embedding/CastCastuser*

DstT0*

SrcT0*'
_output_shapes
:����������
'model_2/User-Embedding/embedding_lookupResourceGather/model_2_user_embedding_embedding_lookup_8659033model_2/User-Embedding/Cast:y:0*
Tindices0*B
_class8
64loc:@model_2/User-Embedding/embedding_lookup/8659033*+
_output_shapes
:���������*
dtype0�
0model_2/User-Embedding/embedding_lookup/IdentityIdentity0model_2/User-Embedding/embedding_lookup:output:0*
T0*B
_class8
64loc:@model_2/User-Embedding/embedding_lookup/8659033*+
_output_shapes
:����������
2model_2/User-Embedding/embedding_lookup/Identity_1Identity9model_2/User-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������k
model_2/Movie-Embedding/CastCastitem*

DstT0*

SrcT0*'
_output_shapes
:����������
(model_2/Movie-Embedding/embedding_lookupResourceGather0model_2_movie_embedding_embedding_lookup_8659039 model_2/Movie-Embedding/Cast:y:0*
Tindices0*C
_class9
75loc:@model_2/Movie-Embedding/embedding_lookup/8659039*+
_output_shapes
:���������*
dtype0�
1model_2/Movie-Embedding/embedding_lookup/IdentityIdentity1model_2/Movie-Embedding/embedding_lookup:output:0*
T0*C
_class9
75loc:@model_2/Movie-Embedding/embedding_lookup/8659039*+
_output_shapes
:����������
3model_2/Movie-Embedding/embedding_lookup/Identity_1Identity:model_2/Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������k
model_2/FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_2/FlattenUsers/ReshapeReshape;model_2/User-Embedding/embedding_lookup/Identity_1:output:0#model_2/FlattenUsers/Const:output:0*
T0*'
_output_shapes
:���������l
model_2/FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_2/FlattenMovies/ReshapeReshape<model_2/Movie-Embedding/embedding_lookup/Identity_1:output:0$model_2/FlattenMovies/Const:output:0*
T0*'
_output_shapes
:����������
model_2/dropout_8/IdentityIdentity&model_2/FlattenMovies/Reshape:output:0*
T0*'
_output_shapes
:���������
model_2/dropout_9/IdentityIdentity%model_2/FlattenUsers/Reshape:output:0*
T0*'
_output_shapes
:���������\
model_2/Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_2/Concat/concatConcatV2#model_2/dropout_8/Identity:output:0#model_2/dropout_9/Identity:output:0#model_2/Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������
y
model_2/dropout_10/IdentityIdentitymodel_2/Concat/concat:output:0*
T0*'
_output_shapes
:���������
�
.model_2/FullyConnected-1/MatMul/ReadVariableOpReadVariableOp7model_2_fullyconnected_1_matmul_readvariableop_resource*
_output_shapes
:	
�*
dtype0�
model_2/FullyConnected-1/MatMulMatMul$model_2/dropout_10/Identity:output:06model_2/FullyConnected-1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/model_2/FullyConnected-1/BiasAdd/ReadVariableOpReadVariableOp8model_2_fullyconnected_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 model_2/FullyConnected-1/BiasAddBiasAdd)model_2/FullyConnected-1/MatMul:product:07model_2/FullyConnected-1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model_2/FullyConnected-1/ReluRelu)model_2/FullyConnected-1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
model_2/dropout_11/IdentityIdentity+model_2/FullyConnected-1/Relu:activations:0*
T0*(
_output_shapes
:�����������
(model_2/Activation/MatMul/ReadVariableOpReadVariableOp1model_2_activation_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_2/Activation/MatMulMatMul$model_2/dropout_11/Identity:output:00model_2/Activation/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)model_2/Activation/BiasAdd/ReadVariableOpReadVariableOp2model_2_activation_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/Activation/BiasAddBiasAdd#model_2/Activation/MatMul:product:01model_2/Activation/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������|
model_2/Activation/SigmoidSigmoid#model_2/Activation/BiasAdd:output:0*
T0*'
_output_shapes
:���������[
model_2/lambda_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �@�
model_2/lambda_2/mulMulmodel_2/lambda_2/mul/x:output:0model_2/Activation/Sigmoid:y:0*
T0*'
_output_shapes
:���������[
model_2/lambda_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
model_2/lambda_2/addAddV2model_2/lambda_2/mul:z:0model_2/lambda_2/add/y:output:0*
T0*'
_output_shapes
:���������g
IdentityIdentitymodel_2/lambda_2/add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp*^model_2/Activation/BiasAdd/ReadVariableOp)^model_2/Activation/MatMul/ReadVariableOp0^model_2/FullyConnected-1/BiasAdd/ReadVariableOp/^model_2/FullyConnected-1/MatMul/ReadVariableOp)^model_2/Movie-Embedding/embedding_lookup(^model_2/User-Embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2V
)model_2/Activation/BiasAdd/ReadVariableOp)model_2/Activation/BiasAdd/ReadVariableOp2T
(model_2/Activation/MatMul/ReadVariableOp(model_2/Activation/MatMul/ReadVariableOp2b
/model_2/FullyConnected-1/BiasAdd/ReadVariableOp/model_2/FullyConnected-1/BiasAdd/ReadVariableOp2`
.model_2/FullyConnected-1/MatMul/ReadVariableOp.model_2/FullyConnected-1/MatMul/ReadVariableOp2T
(model_2/Movie-Embedding/embedding_lookup(model_2/Movie-Embedding/embedding_lookup2R
'model_2/User-Embedding/embedding_lookup'model_2/User-Embedding/embedding_lookup:M I
'
_output_shapes
:���������

_user_specified_nameUser:MI
'
_output_shapes
:���������

_user_specified_nameItem
�?
�
 __inference__traced_save_8660107
file_prefix9
5savev2_movie_embedding_embeddings_read_readvariableop8
4savev2_user_embedding_embeddings_read_readvariableop6
2savev2_fullyconnected_1_kernel_read_readvariableop4
0savev2_fullyconnected_1_bias_read_readvariableop0
,savev2_activation_kernel_read_readvariableop.
*savev2_activation_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop@
<savev2_adam_movie_embedding_embeddings_m_read_readvariableop?
;savev2_adam_user_embedding_embeddings_m_read_readvariableop=
9savev2_adam_fullyconnected_1_kernel_m_read_readvariableop;
7savev2_adam_fullyconnected_1_bias_m_read_readvariableop7
3savev2_adam_activation_kernel_m_read_readvariableop5
1savev2_adam_activation_bias_m_read_readvariableop@
<savev2_adam_movie_embedding_embeddings_v_read_readvariableop?
;savev2_adam_user_embedding_embeddings_v_read_readvariableop=
9savev2_adam_fullyconnected_1_kernel_v_read_readvariableop;
7savev2_adam_fullyconnected_1_bias_v_read_readvariableop7
3savev2_adam_activation_kernel_v_read_readvariableop5
1savev2_adam_activation_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:05savev2_movie_embedding_embeddings_read_readvariableop4savev2_user_embedding_embeddings_read_readvariableop2savev2_fullyconnected_1_kernel_read_readvariableop0savev2_fullyconnected_1_bias_read_readvariableop,savev2_activation_kernel_read_readvariableop*savev2_activation_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop<savev2_adam_movie_embedding_embeddings_m_read_readvariableop;savev2_adam_user_embedding_embeddings_m_read_readvariableop9savev2_adam_fullyconnected_1_kernel_m_read_readvariableop7savev2_adam_fullyconnected_1_bias_m_read_readvariableop3savev2_adam_activation_kernel_m_read_readvariableop1savev2_adam_activation_bias_m_read_readvariableop<savev2_adam_movie_embedding_embeddings_v_read_readvariableop;savev2_adam_user_embedding_embeddings_v_read_readvariableop9savev2_adam_fullyconnected_1_kernel_v_read_readvariableop7savev2_adam_fullyconnected_1_bias_v_read_readvariableop3savev2_adam_activation_kernel_v_read_readvariableop1savev2_adam_activation_bias_v_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 **
dtypes 
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :
ѓ:
��:	
�:�:	�:: : : : : : : : : :
ѓ:
��:	
�:�:	�::
ѓ:
��:	
�:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
ѓ:&"
 
_output_shapes
:
��:%!

_output_shapes
:	
�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
ѓ:&"
 
_output_shapes
:
��:%!

_output_shapes
:	
�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::&"
 
_output_shapes
:
ѓ:&"
 
_output_shapes
:
��:%!

_output_shapes
:	
�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: 
�
e
,__inference_dropout_11_layer_call_fn_8659930

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659280p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
J
.__inference_FlattenUsers_layer_call_fn_8659800

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8659120`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659158

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������
[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������
:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�5
�
D__inference_model_2_layer_call_and_return_conditional_losses_8659517
user
item*
user_embedding_8659488:
��+
movie_embedding_8659491:
ѓ+
fullyconnected_1_8659500:	
�'
fullyconnected_1_8659502:	�%
activation_8659506:	� 
activation_8659508:
identity��"Activation/StatefulPartitionedCall�(FullyConnected-1/StatefulPartitionedCall�'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_8659488*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8659092�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallitemmovie_embedding_8659491*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8659110�
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8659120�
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8659128�
dropout_8/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659135�
dropout_9/PartitionedCallPartitionedCall%FlattenUsers/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659142�
Concat/PartitionedCallPartitionedCall"dropout_8/PartitionedCall:output:0"dropout_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_8659151�
dropout_10/PartitionedCallPartitionedCallConcat/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659158�
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0fullyconnected_1_8659500fullyconnected_1_8659502*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8659171�
dropout_11/PartitionedCallPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659182�
"Activation/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0activation_8659506activation_8659508*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_8659195�
lambda_2/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659209�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_8659491* 
_output_shapes
:
ѓ*
dtype0�
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: p
IdentityIdentity!lambda_2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^Activation/StatefulPartitionedCall)^FullyConnected-1/StatefulPartitionedCall(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2H
"Activation/StatefulPartitionedCall"Activation/StatefulPartitionedCall2T
(FullyConnected-1/StatefulPartitionedCall(FullyConnected-1/StatefulPartitionedCall2R
'Movie-Embedding/StatefulPartitionedCall'Movie-Embedding/StatefulPartitionedCall2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&User-Embedding/StatefulPartitionedCall&User-Embedding/StatefulPartitionedCall:M I
'
_output_shapes
:���������

_user_specified_nameUser:MI
'
_output_shapes
:���������

_user_specified_nameItem
�
F
*__inference_lambda_2_layer_call_fn_8659972

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659209`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
__inference_loss_fn_0_8660002Y
Emovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource:
ѓ
identity��<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpEmovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource* 
_output_shapes
:
ѓ*
dtype0�
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: l
IdentityIdentity.Movie-Embedding/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp
�	
�
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8659092

inputs,
embedding_lookup_8659086:
��
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_8659086Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/8659086*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/8659086*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659247

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �@T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:���������J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
addAddV2mul:z:0add/y:output:0*
T0*'
_output_shapes
:���������O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
H
,__inference_dropout_10_layer_call_fn_8659878

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659158`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������
:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
e
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8659120

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659935

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
T
(__inference_Concat_layer_call_fn_8659866
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_8659151`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
�
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8659110

inputs,
embedding_lookup_8659100:
ѓ
identity��<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_8659100Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/8659100*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/8659100*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_8659100* 
_output_shapes
:
ѓ*
dtype0�
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
F
*__inference_lambda_2_layer_call_fn_8659977

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659247`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

f
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659280

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
f
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8659128

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
,__inference_dropout_10_layer_call_fn_8659883

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659313o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������
22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�9
�
D__inference_model_2_layer_call_and_return_conditional_losses_8659669
inputs_0
inputs_1;
'user_embedding_embedding_lookup_8659625:
��<
(movie_embedding_embedding_lookup_8659631:
ѓB
/fullyconnected_1_matmul_readvariableop_resource:	
�?
0fullyconnected_1_biasadd_readvariableop_resource:	�<
)activation_matmul_readvariableop_resource:	�8
*activation_biasadd_readvariableop_resource:
identity��!Activation/BiasAdd/ReadVariableOp� Activation/MatMul/ReadVariableOp�'FullyConnected-1/BiasAdd/ReadVariableOp�&FullyConnected-1/MatMul/ReadVariableOp� Movie-Embedding/embedding_lookup�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�User-Embedding/embedding_lookupf
User-Embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
User-Embedding/embedding_lookupResourceGather'user_embedding_embedding_lookup_8659625User-Embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@User-Embedding/embedding_lookup/8659625*+
_output_shapes
:���������*
dtype0�
(User-Embedding/embedding_lookup/IdentityIdentity(User-Embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@User-Embedding/embedding_lookup/8659625*+
_output_shapes
:����������
*User-Embedding/embedding_lookup/Identity_1Identity1User-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������g
Movie-Embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:����������
 Movie-Embedding/embedding_lookupResourceGather(movie_embedding_embedding_lookup_8659631Movie-Embedding/Cast:y:0*
Tindices0*;
_class1
/-loc:@Movie-Embedding/embedding_lookup/8659631*+
_output_shapes
:���������*
dtype0�
)Movie-Embedding/embedding_lookup/IdentityIdentity)Movie-Embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Movie-Embedding/embedding_lookup/8659631*+
_output_shapes
:����������
+Movie-Embedding/embedding_lookup/Identity_1Identity2Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������c
FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
FlattenUsers/ReshapeReshape3User-Embedding/embedding_lookup/Identity_1:output:0FlattenUsers/Const:output:0*
T0*'
_output_shapes
:���������d
FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
FlattenMovies/ReshapeReshape4Movie-Embedding/embedding_lookup/Identity_1:output:0FlattenMovies/Const:output:0*
T0*'
_output_shapes
:���������p
dropout_8/IdentityIdentityFlattenMovies/Reshape:output:0*
T0*'
_output_shapes
:���������o
dropout_9/IdentityIdentityFlattenUsers/Reshape:output:0*
T0*'
_output_shapes
:���������T
Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
Concat/concatConcatV2dropout_8/Identity:output:0dropout_9/Identity:output:0Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������
i
dropout_10/IdentityIdentityConcat/concat:output:0*
T0*'
_output_shapes
:���������
�
&FullyConnected-1/MatMul/ReadVariableOpReadVariableOp/fullyconnected_1_matmul_readvariableop_resource*
_output_shapes
:	
�*
dtype0�
FullyConnected-1/MatMulMatMuldropout_10/Identity:output:0.FullyConnected-1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'FullyConnected-1/BiasAdd/ReadVariableOpReadVariableOp0fullyconnected_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FullyConnected-1/BiasAddBiasAdd!FullyConnected-1/MatMul:product:0/FullyConnected-1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
FullyConnected-1/ReluRelu!FullyConnected-1/BiasAdd:output:0*
T0*(
_output_shapes
:����������w
dropout_11/IdentityIdentity#FullyConnected-1/Relu:activations:0*
T0*(
_output_shapes
:�����������
 Activation/MatMul/ReadVariableOpReadVariableOp)activation_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Activation/MatMulMatMuldropout_11/Identity:output:0(Activation/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!Activation/BiasAdd/ReadVariableOpReadVariableOp*activation_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Activation/BiasAddBiasAddActivation/MatMul:product:0)Activation/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l
Activation/SigmoidSigmoidActivation/BiasAdd:output:0*
T0*'
_output_shapes
:���������S
lambda_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �@v
lambda_2/mulMullambda_2/mul/x:output:0Activation/Sigmoid:y:0*
T0*'
_output_shapes
:���������S
lambda_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?r
lambda_2/addAddV2lambda_2/mul:z:0lambda_2/add/y:output:0*
T0*'
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp(movie_embedding_embedding_lookup_8659631* 
_output_shapes
:
ѓ*
dtype0�
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentitylambda_2/add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^Activation/BiasAdd/ReadVariableOp!^Activation/MatMul/ReadVariableOp(^FullyConnected-1/BiasAdd/ReadVariableOp'^FullyConnected-1/MatMul/ReadVariableOp!^Movie-Embedding/embedding_lookup=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp ^User-Embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2F
!Activation/BiasAdd/ReadVariableOp!Activation/BiasAdd/ReadVariableOp2D
 Activation/MatMul/ReadVariableOp Activation/MatMul/ReadVariableOp2R
'FullyConnected-1/BiasAdd/ReadVariableOp'FullyConnected-1/BiasAdd/ReadVariableOp2P
&FullyConnected-1/MatMul/ReadVariableOp&FullyConnected-1/MatMul/ReadVariableOp2D
 Movie-Embedding/embedding_lookup Movie-Embedding/embedding_lookup2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2B
User-Embedding/embedding_lookupUser-Embedding/embedding_lookup:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
5
Item-
serving_default_Item:0���������
5
User-
serving_default_User:0���������<
lambda_20
StatefulPartitionedCall:0���������tensorflow/serving/predict:ι
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-2
layer-10
layer-11
layer_with_weights-3
layer-12
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
6
_init_input_shape"
_tf_keras_input_layer
6
_init_input_shape"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 
embeddings"
_tf_keras_layer
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'
embeddings"
_tf_keras_layer
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator"
_tf_keras_layer
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_random_generator"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator"
_tf_keras_layer
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias"
_tf_keras_layer
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]_random_generator"
_tf_keras_layer
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

dkernel
ebias"
_tf_keras_layer
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
J
 0
'1
U2
V3
d4
e5"
trackable_list_wrapper
J
 0
'1
U2
V3
d4
e5"
trackable_list_wrapper
'
l0"
trackable_list_wrapper
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
rtrace_0
strace_1
ttrace_2
utrace_32�
)__inference_model_2_layer_call_fn_8659231
)__inference_model_2_layer_call_fn_8659602
)__inference_model_2_layer_call_fn_8659620
)__inference_model_2_layer_call_fn_8659484�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zrtrace_0zstrace_1zttrace_2zutrace_3
�
vtrace_0
wtrace_1
xtrace_2
ytrace_32�
D__inference_model_2_layer_call_and_return_conditional_losses_8659669
D__inference_model_2_layer_call_and_return_conditional_losses_8659746
D__inference_model_2_layer_call_and_return_conditional_losses_8659517
D__inference_model_2_layer_call_and_return_conditional_losses_8659550�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zvtrace_0zwtrace_1zxtrace_2zytrace_3
�B�
"__inference__wrapped_model_8659073UserItem"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
ziter

{beta_1

|beta_2
	}decay
~learning_rate m�'m�Um�Vm�dm�em� v�'v�Uv�Vv�dv�ev�"
	optimizer
,
serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
'
 0"
trackable_list_wrapper
'
l0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_Movie-Embedding_layer_call_fn_8659753�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8659767�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.:,
ѓ2Movie-Embedding/embeddings
'
'0"
trackable_list_wrapper
'
'0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_User-Embedding_layer_call_fn_8659774�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8659784�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
-:+
��2User-Embedding/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_FlattenMovies_layer_call_fn_8659789�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8659795�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_FlattenUsers_layer_call_fn_8659800�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8659806�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_8_layer_call_fn_8659811
+__inference_dropout_8_layer_call_fn_8659816�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659821
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659833�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_9_layer_call_fn_8659838
+__inference_dropout_9_layer_call_fn_8659843�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659848
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659860�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_Concat_layer_call_fn_8659866�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_Concat_layer_call_and_return_conditional_losses_8659873�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_10_layer_call_fn_8659878
,__inference_dropout_10_layer_call_fn_8659883�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659888
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659900�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_FullyConnected-1_layer_call_fn_8659909�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8659920�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(	
�2FullyConnected-1/kernel
$:"�2FullyConnected-1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_11_layer_call_fn_8659925
,__inference_dropout_11_layer_call_fn_8659930�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659935
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659947�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_Activation_layer_call_fn_8659956�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_Activation_layer_call_and_return_conditional_losses_8659967�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
$:"	�2Activation/kernel
:2Activation/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
*__inference_lambda_2_layer_call_fn_8659972
*__inference_lambda_2_layer_call_fn_8659977�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659985
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659993�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_02�
__inference_loss_fn_0_8660002�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_model_2_layer_call_fn_8659231UserItem"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_model_2_layer_call_fn_8659602inputs_0inputs_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_model_2_layer_call_fn_8659620inputs_0inputs_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_model_2_layer_call_fn_8659484UserItem"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_2_layer_call_and_return_conditional_losses_8659669inputs_0inputs_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_2_layer_call_and_return_conditional_losses_8659746inputs_0inputs_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_2_layer_call_and_return_conditional_losses_8659517UserItem"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_2_layer_call_and_return_conditional_losses_8659550UserItem"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
%__inference_signature_wrapper_8659580ItemUser"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
l0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_Movie-Embedding_layer_call_fn_8659753inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8659767inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_User-Embedding_layer_call_fn_8659774inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8659784inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_FlattenMovies_layer_call_fn_8659789inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8659795inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_FlattenUsers_layer_call_fn_8659800inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8659806inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_dropout_8_layer_call_fn_8659811inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_8_layer_call_fn_8659816inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659821inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659833inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_dropout_9_layer_call_fn_8659838inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_9_layer_call_fn_8659843inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659848inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659860inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_Concat_layer_call_fn_8659866inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_Concat_layer_call_and_return_conditional_losses_8659873inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_dropout_10_layer_call_fn_8659878inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_10_layer_call_fn_8659883inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659888inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659900inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_FullyConnected-1_layer_call_fn_8659909inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8659920inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_dropout_11_layer_call_fn_8659925inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_11_layer_call_fn_8659930inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659935inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659947inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_Activation_layer_call_fn_8659956inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_Activation_layer_call_and_return_conditional_losses_8659967inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_lambda_2_layer_call_fn_8659972inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_lambda_2_layer_call_fn_8659977inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659985inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659993inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_8660002"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
3:1
ѓ2!Adam/Movie-Embedding/embeddings/m
2:0
��2 Adam/User-Embedding/embeddings/m
/:-	
�2Adam/FullyConnected-1/kernel/m
):'�2Adam/FullyConnected-1/bias/m
):'	�2Adam/Activation/kernel/m
": 2Adam/Activation/bias/m
3:1
ѓ2!Adam/Movie-Embedding/embeddings/v
2:0
��2 Adam/User-Embedding/embeddings/v
/:-	
�2Adam/FullyConnected-1/kernel/v
):'�2Adam/FullyConnected-1/bias/v
):'	�2Adam/Activation/kernel/v
": 2Adam/Activation/bias/v�
G__inference_Activation_layer_call_and_return_conditional_losses_8659967dde0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
,__inference_Activation_layer_call_fn_8659956Yde0�-
&�#
!�
inputs����������
� "!�
unknown����������
C__inference_Concat_layer_call_and_return_conditional_losses_8659873�Z�W
P�M
K�H
"�
inputs_0���������
"�
inputs_1���������
� ",�)
"�
tensor_0���������

� �
(__inference_Concat_layer_call_fn_8659866Z�W
P�M
K�H
"�
inputs_0���������
"�
inputs_1���������
� "!�
unknown���������
�
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8659795c3�0
)�&
$�!
inputs���������
� ",�)
"�
tensor_0���������
� �
/__inference_FlattenMovies_layer_call_fn_8659789X3�0
)�&
$�!
inputs���������
� "!�
unknown����������
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8659806c3�0
)�&
$�!
inputs���������
� ",�)
"�
tensor_0���������
� �
.__inference_FlattenUsers_layer_call_fn_8659800X3�0
)�&
$�!
inputs���������
� "!�
unknown����������
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8659920dUV/�,
%�"
 �
inputs���������

� "-�*
#� 
tensor_0����������
� �
2__inference_FullyConnected-1_layer_call_fn_8659909YUV/�,
%�"
 �
inputs���������

� ""�
unknown�����������
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8659767f /�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������
� �
1__inference_Movie-Embedding_layer_call_fn_8659753[ /�,
%�"
 �
inputs���������
� "%�"
unknown����������
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8659784f'/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������
� �
0__inference_User-Embedding_layer_call_fn_8659774['/�,
%�"
 �
inputs���������
� "%�"
unknown����������
"__inference__wrapped_model_8659073�' UVdeR�O
H�E
C�@
�
User���������
�
Item���������
� "3�0
.
lambda_2"�
lambda_2����������
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659888c3�0
)�&
 �
inputs���������

p 
� ",�)
"�
tensor_0���������

� �
G__inference_dropout_10_layer_call_and_return_conditional_losses_8659900c3�0
)�&
 �
inputs���������

p
� ",�)
"�
tensor_0���������

� �
,__inference_dropout_10_layer_call_fn_8659878X3�0
)�&
 �
inputs���������

p 
� "!�
unknown���������
�
,__inference_dropout_10_layer_call_fn_8659883X3�0
)�&
 �
inputs���������

p
� "!�
unknown���������
�
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659935e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
G__inference_dropout_11_layer_call_and_return_conditional_losses_8659947e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
,__inference_dropout_11_layer_call_fn_8659925Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
,__inference_dropout_11_layer_call_fn_8659930Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659821c3�0
)�&
 �
inputs���������
p 
� ",�)
"�
tensor_0���������
� �
F__inference_dropout_8_layer_call_and_return_conditional_losses_8659833c3�0
)�&
 �
inputs���������
p
� ",�)
"�
tensor_0���������
� �
+__inference_dropout_8_layer_call_fn_8659811X3�0
)�&
 �
inputs���������
p 
� "!�
unknown����������
+__inference_dropout_8_layer_call_fn_8659816X3�0
)�&
 �
inputs���������
p
� "!�
unknown����������
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659848c3�0
)�&
 �
inputs���������
p 
� ",�)
"�
tensor_0���������
� �
F__inference_dropout_9_layer_call_and_return_conditional_losses_8659860c3�0
)�&
 �
inputs���������
p
� ",�)
"�
tensor_0���������
� �
+__inference_dropout_9_layer_call_fn_8659838X3�0
)�&
 �
inputs���������
p 
� "!�
unknown����������
+__inference_dropout_9_layer_call_fn_8659843X3�0
)�&
 �
inputs���������
p
� "!�
unknown����������
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659985g7�4
-�*
 �
inputs���������

 
p 
� ",�)
"�
tensor_0���������
� �
E__inference_lambda_2_layer_call_and_return_conditional_losses_8659993g7�4
-�*
 �
inputs���������

 
p
� ",�)
"�
tensor_0���������
� �
*__inference_lambda_2_layer_call_fn_8659972\7�4
-�*
 �
inputs���������

 
p 
� "!�
unknown����������
*__inference_lambda_2_layer_call_fn_8659977\7�4
-�*
 �
inputs���������

 
p
� "!�
unknown���������E
__inference_loss_fn_0_8660002$ �

� 
� "�
unknown �
D__inference_model_2_layer_call_and_return_conditional_losses_8659517�' UVdeZ�W
P�M
C�@
�
User���������
�
Item���������
p 

 
� ",�)
"�
tensor_0���������
� �
D__inference_model_2_layer_call_and_return_conditional_losses_8659550�' UVdeZ�W
P�M
C�@
�
User���������
�
Item���������
p

 
� ",�)
"�
tensor_0���������
� �
D__inference_model_2_layer_call_and_return_conditional_losses_8659669�' UVdeb�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������
p 

 
� ",�)
"�
tensor_0���������
� �
D__inference_model_2_layer_call_and_return_conditional_losses_8659746�' UVdeb�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������
p

 
� ",�)
"�
tensor_0���������
� �
)__inference_model_2_layer_call_fn_8659231�' UVdeZ�W
P�M
C�@
�
User���������
�
Item���������
p 

 
� "!�
unknown����������
)__inference_model_2_layer_call_fn_8659484�' UVdeZ�W
P�M
C�@
�
User���������
�
Item���������
p

 
� "!�
unknown����������
)__inference_model_2_layer_call_fn_8659602�' UVdeb�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������
p 

 
� "!�
unknown����������
)__inference_model_2_layer_call_fn_8659620�' UVdeb�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������
p

 
� "!�
unknown����������
%__inference_signature_wrapper_8659580�' UVde]�Z
� 
S�P
&
Item�
item���������
&
User�
user���������"3�0
.
lambda_2"�
lambda_2���������