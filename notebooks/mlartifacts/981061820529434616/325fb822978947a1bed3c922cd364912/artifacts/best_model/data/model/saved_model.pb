��
��
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
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
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
 �"serve*2.12.02unknown8��

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
dtype0*
shape
:2*)
shared_nameAdam/Activation/kernel/v
�
,Adam/Activation/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Activation/kernel/v*
_output_shapes

:2*
dtype0
�
Adam/FullyConnected-1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*-
shared_nameAdam/FullyConnected-1/bias/v
�
0Adam/FullyConnected-1/bias/v/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/bias/v*
_output_shapes
:2*
dtype0
�
Adam/FullyConnected-1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*/
shared_name Adam/FullyConnected-1/kernel/v
�
2Adam/FullyConnected-1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/kernel/v*
_output_shapes

:2*
dtype0
�
 Adam/User-Embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*1
shared_name" Adam/User-Embedding/embeddings/v
�
4Adam/User-Embedding/embeddings/v/Read/ReadVariableOpReadVariableOp Adam/User-Embedding/embeddings/v*
_output_shapes
:	�*
dtype0
�
!Adam/Movie-Embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*2
shared_name#!Adam/Movie-Embedding/embeddings/v
�
5Adam/Movie-Embedding/embeddings/v/Read/ReadVariableOpReadVariableOp!Adam/Movie-Embedding/embeddings/v*
_output_shapes
:	�*
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
dtype0*
shape
:2*)
shared_nameAdam/Activation/kernel/m
�
,Adam/Activation/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Activation/kernel/m*
_output_shapes

:2*
dtype0
�
Adam/FullyConnected-1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*-
shared_nameAdam/FullyConnected-1/bias/m
�
0Adam/FullyConnected-1/bias/m/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/bias/m*
_output_shapes
:2*
dtype0
�
Adam/FullyConnected-1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*/
shared_name Adam/FullyConnected-1/kernel/m
�
2Adam/FullyConnected-1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/kernel/m*
_output_shapes

:2*
dtype0
�
 Adam/User-Embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*1
shared_name" Adam/User-Embedding/embeddings/m
�
4Adam/User-Embedding/embeddings/m/Read/ReadVariableOpReadVariableOp Adam/User-Embedding/embeddings/m*
_output_shapes
:	�*
dtype0
�
!Adam/Movie-Embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*2
shared_name#!Adam/Movie-Embedding/embeddings/m
�
5Adam/Movie-Embedding/embeddings/m/Read/ReadVariableOpReadVariableOp!Adam/Movie-Embedding/embeddings/m*
_output_shapes
:	�*
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
~
Activation/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*"
shared_nameActivation/kernel
w
%Activation/kernel/Read/ReadVariableOpReadVariableOpActivation/kernel*
_output_shapes

:2*
dtype0
�
FullyConnected-1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*&
shared_nameFullyConnected-1/bias
{
)FullyConnected-1/bias/Read/ReadVariableOpReadVariableOpFullyConnected-1/bias*
_output_shapes
:2*
dtype0
�
FullyConnected-1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*(
shared_nameFullyConnected-1/kernel
�
+FullyConnected-1/kernel/Read/ReadVariableOpReadVariableOpFullyConnected-1/kernel*
_output_shapes

:2*
dtype0
�
User-Embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�**
shared_nameUser-Embedding/embeddings
�
-User-Embedding/embeddings/Read/ReadVariableOpReadVariableOpUser-Embedding/embeddings*
_output_shapes
:	�*
dtype0
�
Movie-Embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_nameMovie-Embedding/embeddings
�
.Movie-Embedding/embeddings/Read/ReadVariableOpReadVariableOpMovie-Embedding/embeddings*
_output_shapes
:	�*
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
GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_633948

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
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameMovie-Embedding/embeddingsUser-Embedding/embeddingsFullyConnected-1/kernelFullyConnected-1/biasActivation/kernelActivation/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount!Adam/Movie-Embedding/embeddings/m Adam/User-Embedding/embeddings/mAdam/FullyConnected-1/kernel/mAdam/FullyConnected-1/bias/mAdam/Activation/kernel/mAdam/Activation/bias/m!Adam/Movie-Embedding/embeddings/v Adam/User-Embedding/embeddings/vAdam/FullyConnected-1/kernel/vAdam/FullyConnected-1/bias/vAdam/Activation/kernel/vAdam/Activation/bias/vConst*(
Tin!
2*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_634556
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_634647��	
�
J
.__inference_FlattenMovies_layer_call_fn_634157

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_633492`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
E
)__inference_lambda_6_layer_call_fn_634345

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
GPU 2J 8� *M
fHRF
D__inference_lambda_6_layer_call_and_return_conditional_losses_633662`
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
�
S
'__inference_Concat_layer_call_fn_634234
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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_Concat_layer_call_and_return_conditional_losses_633529`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
c
*__inference_dropout_7_layer_call_fn_634206

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
GPU 2J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_633520o
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
�
d
+__inference_dropout_10_layer_call_fn_634293

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
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_633574o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������222
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
F
*__inference_dropout_6_layer_call_fn_634184

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_633624`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
1__inference_FullyConnected-1_layer_call_fn_634277

inputs
unknown:2
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_FullyConnected-1_layer_call_and_return_conditional_losses_633556o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
(__inference_model_6_layer_call_fn_633772
user
item
unknown:	�
	unknown_0:	�
	unknown_1:2
	unknown_2:2
	unknown_3:2
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
GPU 2J 8� *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_633757o
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
�

�
L__inference_FullyConnected-1_layer_call_and_return_conditional_losses_633556

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
`
D__inference_lambda_6_layer_call_and_return_conditional_losses_633601

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
 *  �?W
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
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_634228

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

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_634263

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
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
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
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�9
�
C__inference_model_6_layer_call_and_return_conditional_losses_634114
inputs_0
inputs_19
&user_embedding_embedding_lookup_634070:	�:
'movie_embedding_embedding_lookup_634076:	�A
/fullyconnected_1_matmul_readvariableop_resource:2>
0fullyconnected_1_biasadd_readvariableop_resource:2;
)activation_matmul_readvariableop_resource:28
*activation_biasadd_readvariableop_resource:
identity��!Activation/BiasAdd/ReadVariableOp� Activation/MatMul/ReadVariableOp�'FullyConnected-1/BiasAdd/ReadVariableOp�&FullyConnected-1/MatMul/ReadVariableOp� Movie-Embedding/embedding_lookup�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�User-Embedding/embedding_lookupf
User-Embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
User-Embedding/embedding_lookupResourceGather&user_embedding_embedding_lookup_634070User-Embedding/Cast:y:0*
Tindices0*9
_class/
-+loc:@User-Embedding/embedding_lookup/634070*+
_output_shapes
:���������*
dtype0�
(User-Embedding/embedding_lookup/IdentityIdentity(User-Embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@User-Embedding/embedding_lookup/634070*+
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
 Movie-Embedding/embedding_lookupResourceGather'movie_embedding_embedding_lookup_634076Movie-Embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@Movie-Embedding/embedding_lookup/634076*+
_output_shapes
:���������*
dtype0�
)Movie-Embedding/embedding_lookup/IdentityIdentity)Movie-Embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@Movie-Embedding/embedding_lookup/634076*+
_output_shapes
:����������
+Movie-Embedding/embedding_lookup/Identity_1Identity2Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������c
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
valueB"����   �
FlattenMovies/ReshapeReshape4Movie-Embedding/embedding_lookup/Identity_1:output:0FlattenMovies/Const:output:0*
T0*'
_output_shapes
:���������p
dropout_6/IdentityIdentityFlattenMovies/Reshape:output:0*
T0*'
_output_shapes
:���������o
dropout_7/IdentityIdentityFlattenUsers/Reshape:output:0*
T0*'
_output_shapes
:���������T
Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
Concat/concatConcatV2dropout_6/Identity:output:0dropout_7/Identity:output:0Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������h
dropout_8/IdentityIdentityConcat/concat:output:0*
T0*'
_output_shapes
:����������
&FullyConnected-1/MatMul/ReadVariableOpReadVariableOp/fullyconnected_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
FullyConnected-1/MatMulMatMuldropout_8/Identity:output:0.FullyConnected-1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'FullyConnected-1/BiasAdd/ReadVariableOpReadVariableOp0fullyconnected_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
FullyConnected-1/BiasAddBiasAdd!FullyConnected-1/MatMul:product:0/FullyConnected-1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
FullyConnected-1/ReluRelu!FullyConnected-1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2v
dropout_10/IdentityIdentity#FullyConnected-1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
 Activation/MatMul/ReadVariableOpReadVariableOp)activation_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
Activation/MatMulMatMuldropout_10/Identity:output:0(Activation/MatMul/ReadVariableOp:value:0*
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
lambda_6/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �@v
lambda_6/mulMullambda_6/mul/x:output:0Activation/Sigmoid:y:0*
T0*'
_output_shapes
:���������S
lambda_6/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?r
lambda_6/addAddV2lambda_6/mul:z:0lambda_6/add/y:output:0*
T0*'
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp'movie_embedding_embedding_lookup_634076*
_output_shapes
:	�*
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
IdentityIdentitylambda_6/add:z:0^NoOp*
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
�

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_633506

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
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
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
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�;
�
C__inference_model_6_layer_call_and_return_conditional_losses_633608
user
item(
user_embedding_633457:	�)
movie_embedding_633475:	�)
fullyconnected_1_633557:2%
fullyconnected_1_633559:2#
activation_633588:2
activation_633590:
identity��"Activation/StatefulPartitionedCall�(FullyConnected-1/StatefulPartitionedCall�'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�"dropout_10/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�!dropout_7/StatefulPartitionedCall�!dropout_8/StatefulPartitionedCall�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_633457*
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
GPU 2J 8� *S
fNRL
J__inference_User-Embedding_layer_call_and_return_conditional_losses_633456�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallitemmovie_embedding_633475*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_633474�
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
GPU 2J 8� *Q
fLRJ
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_633484�
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_633492�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall&FlattenMovies/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_633506�
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall%FlattenUsers/PartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_633520�
Concat/PartitionedCallPartitionedCall*dropout_6/StatefulPartitionedCall:output:0*dropout_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_Concat_layer_call_and_return_conditional_losses_633529�
!dropout_8/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_633543�
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0fullyconnected_1_633557fullyconnected_1_633559*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_FullyConnected-1_layer_call_and_return_conditional_losses_633556�
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_633574�
"Activation/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0activation_633588activation_633590*
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
GPU 2J 8� *O
fJRH
F__inference_Activation_layer_call_and_return_conditional_losses_633587�
lambda_6/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *M
fHRF
D__inference_lambda_6_layer_call_and_return_conditional_losses_633601�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_633475*
_output_shapes
:	�*
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
IdentityIdentity!lambda_6/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^Activation/StatefulPartitionedCall)^FullyConnected-1/StatefulPartitionedCall(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall*"
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
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall:M I
'
_output_shapes
:���������

_user_specified_nameUser:MI
'
_output_shapes
:���������

_user_specified_nameItem
�

�
L__inference_FullyConnected-1_layer_call_and_return_conditional_losses_634288

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
0__inference_Movie-Embedding_layer_call_fn_634121

inputs
unknown:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_633474s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
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
+__inference_dropout_10_layer_call_fn_634298

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
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_633648`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������2:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
e
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_634163

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_User-Embedding_layer_call_fn_634142

inputs
unknown:	�
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
GPU 2J 8� *S
fNRL
J__inference_User-Embedding_layer_call_and_return_conditional_losses_633456s
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
l
B__inference_Concat_layer_call_and_return_conditional_losses_633529

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
:���������W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_633637

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
__inference_loss_fn_0_634370X
Emovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource:	�
identity��<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpEmovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�*
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
F__inference_Activation_layer_call_and_return_conditional_losses_634335

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
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
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
c
*__inference_dropout_8_layer_call_fn_634246

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_633543o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
!__inference__wrapped_model_633441
user
itemA
.model_6_user_embedding_embedding_lookup_633401:	�B
/model_6_movie_embedding_embedding_lookup_633407:	�I
7model_6_fullyconnected_1_matmul_readvariableop_resource:2F
8model_6_fullyconnected_1_biasadd_readvariableop_resource:2C
1model_6_activation_matmul_readvariableop_resource:2@
2model_6_activation_biasadd_readvariableop_resource:
identity��)model_6/Activation/BiasAdd/ReadVariableOp�(model_6/Activation/MatMul/ReadVariableOp�/model_6/FullyConnected-1/BiasAdd/ReadVariableOp�.model_6/FullyConnected-1/MatMul/ReadVariableOp�(model_6/Movie-Embedding/embedding_lookup�'model_6/User-Embedding/embedding_lookupj
model_6/User-Embedding/CastCastuser*

DstT0*

SrcT0*'
_output_shapes
:����������
'model_6/User-Embedding/embedding_lookupResourceGather.model_6_user_embedding_embedding_lookup_633401model_6/User-Embedding/Cast:y:0*
Tindices0*A
_class7
53loc:@model_6/User-Embedding/embedding_lookup/633401*+
_output_shapes
:���������*
dtype0�
0model_6/User-Embedding/embedding_lookup/IdentityIdentity0model_6/User-Embedding/embedding_lookup:output:0*
T0*A
_class7
53loc:@model_6/User-Embedding/embedding_lookup/633401*+
_output_shapes
:����������
2model_6/User-Embedding/embedding_lookup/Identity_1Identity9model_6/User-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������k
model_6/Movie-Embedding/CastCastitem*

DstT0*

SrcT0*'
_output_shapes
:����������
(model_6/Movie-Embedding/embedding_lookupResourceGather/model_6_movie_embedding_embedding_lookup_633407 model_6/Movie-Embedding/Cast:y:0*
Tindices0*B
_class8
64loc:@model_6/Movie-Embedding/embedding_lookup/633407*+
_output_shapes
:���������*
dtype0�
1model_6/Movie-Embedding/embedding_lookup/IdentityIdentity1model_6/Movie-Embedding/embedding_lookup:output:0*
T0*B
_class8
64loc:@model_6/Movie-Embedding/embedding_lookup/633407*+
_output_shapes
:����������
3model_6/Movie-Embedding/embedding_lookup/Identity_1Identity:model_6/Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������k
model_6/FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_6/FlattenUsers/ReshapeReshape;model_6/User-Embedding/embedding_lookup/Identity_1:output:0#model_6/FlattenUsers/Const:output:0*
T0*'
_output_shapes
:���������l
model_6/FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_6/FlattenMovies/ReshapeReshape<model_6/Movie-Embedding/embedding_lookup/Identity_1:output:0$model_6/FlattenMovies/Const:output:0*
T0*'
_output_shapes
:����������
model_6/dropout_6/IdentityIdentity&model_6/FlattenMovies/Reshape:output:0*
T0*'
_output_shapes
:���������
model_6/dropout_7/IdentityIdentity%model_6/FlattenUsers/Reshape:output:0*
T0*'
_output_shapes
:���������\
model_6/Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_6/Concat/concatConcatV2#model_6/dropout_6/Identity:output:0#model_6/dropout_7/Identity:output:0#model_6/Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������x
model_6/dropout_8/IdentityIdentitymodel_6/Concat/concat:output:0*
T0*'
_output_shapes
:����������
.model_6/FullyConnected-1/MatMul/ReadVariableOpReadVariableOp7model_6_fullyconnected_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
model_6/FullyConnected-1/MatMulMatMul#model_6/dropout_8/Identity:output:06model_6/FullyConnected-1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/model_6/FullyConnected-1/BiasAdd/ReadVariableOpReadVariableOp8model_6_fullyconnected_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
 model_6/FullyConnected-1/BiasAddBiasAdd)model_6/FullyConnected-1/MatMul:product:07model_6/FullyConnected-1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
model_6/FullyConnected-1/ReluRelu)model_6/FullyConnected-1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
model_6/dropout_10/IdentityIdentity+model_6/FullyConnected-1/Relu:activations:0*
T0*'
_output_shapes
:���������2�
(model_6/Activation/MatMul/ReadVariableOpReadVariableOp1model_6_activation_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
model_6/Activation/MatMulMatMul$model_6/dropout_10/Identity:output:00model_6/Activation/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)model_6/Activation/BiasAdd/ReadVariableOpReadVariableOp2model_6_activation_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_6/Activation/BiasAddBiasAdd#model_6/Activation/MatMul:product:01model_6/Activation/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������|
model_6/Activation/SigmoidSigmoid#model_6/Activation/BiasAdd:output:0*
T0*'
_output_shapes
:���������[
model_6/lambda_6/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �@�
model_6/lambda_6/mulMulmodel_6/lambda_6/mul/x:output:0model_6/Activation/Sigmoid:y:0*
T0*'
_output_shapes
:���������[
model_6/lambda_6/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
model_6/lambda_6/addAddV2model_6/lambda_6/mul:z:0model_6/lambda_6/add/y:output:0*
T0*'
_output_shapes
:���������g
IdentityIdentitymodel_6/lambda_6/add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp*^model_6/Activation/BiasAdd/ReadVariableOp)^model_6/Activation/MatMul/ReadVariableOp0^model_6/FullyConnected-1/BiasAdd/ReadVariableOp/^model_6/FullyConnected-1/MatMul/ReadVariableOp)^model_6/Movie-Embedding/embedding_lookup(^model_6/User-Embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2V
)model_6/Activation/BiasAdd/ReadVariableOp)model_6/Activation/BiasAdd/ReadVariableOp2T
(model_6/Activation/MatMul/ReadVariableOp(model_6/Activation/MatMul/ReadVariableOp2b
/model_6/FullyConnected-1/BiasAdd/ReadVariableOp/model_6/FullyConnected-1/BiasAdd/ReadVariableOp2`
.model_6/FullyConnected-1/MatMul/ReadVariableOp.model_6/FullyConnected-1/MatMul/ReadVariableOp2T
(model_6/Movie-Embedding/embedding_lookup(model_6/Movie-Embedding/embedding_lookup2R
'model_6/User-Embedding/embedding_lookup'model_6/User-Embedding/embedding_lookup:M I
'
_output_shapes
:���������

_user_specified_nameUser:MI
'
_output_shapes
:���������

_user_specified_nameItem
�	
�
J__inference_User-Embedding_layer_call_and_return_conditional_losses_634152

inputs*
embedding_lookup_634146:	�
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_634146Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/634146*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/634146*+
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
�
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_633648

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������2:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
��
�
__inference__traced_save_634556
file_prefixD
1read_disablecopyonread_movie_embedding_embeddings:	�E
2read_1_disablecopyonread_user_embedding_embeddings:	�B
0read_2_disablecopyonread_fullyconnected_1_kernel:2<
.read_3_disablecopyonread_fullyconnected_1_bias:2<
*read_4_disablecopyonread_activation_kernel:26
(read_5_disablecopyonread_activation_bias:,
"read_6_disablecopyonread_adam_iter:	 .
$read_7_disablecopyonread_adam_beta_1: .
$read_8_disablecopyonread_adam_beta_2: -
#read_9_disablecopyonread_adam_decay: 6
,read_10_disablecopyonread_adam_learning_rate: +
!read_11_disablecopyonread_total_1: +
!read_12_disablecopyonread_count_1: )
read_13_disablecopyonread_total: )
read_14_disablecopyonread_count: N
;read_15_disablecopyonread_adam_movie_embedding_embeddings_m:	�M
:read_16_disablecopyonread_adam_user_embedding_embeddings_m:	�J
8read_17_disablecopyonread_adam_fullyconnected_1_kernel_m:2D
6read_18_disablecopyonread_adam_fullyconnected_1_bias_m:2D
2read_19_disablecopyonread_adam_activation_kernel_m:2>
0read_20_disablecopyonread_adam_activation_bias_m:N
;read_21_disablecopyonread_adam_movie_embedding_embeddings_v:	�M
:read_22_disablecopyonread_adam_user_embedding_embeddings_v:	�J
8read_23_disablecopyonread_adam_fullyconnected_1_kernel_v:2D
6read_24_disablecopyonread_adam_fullyconnected_1_bias_v:2D
2read_25_disablecopyonread_adam_activation_kernel_v:2>
0read_26_disablecopyonread_adam_activation_bias_v:
savev2_const
identity_55��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: �
Read/DisableCopyOnReadDisableCopyOnRead1read_disablecopyonread_movie_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp1read_disablecopyonread_movie_embedding_embeddings^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_1/DisableCopyOnReadDisableCopyOnRead2read_1_disablecopyonread_user_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp2read_1_disablecopyonread_user_embedding_embeddings^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_2/DisableCopyOnReadDisableCopyOnRead0read_2_disablecopyonread_fullyconnected_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp0read_2_disablecopyonread_fullyconnected_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:2�
Read_3/DisableCopyOnReadDisableCopyOnRead.read_3_disablecopyonread_fullyconnected_1_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp.read_3_disablecopyonread_fullyconnected_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:2~
Read_4/DisableCopyOnReadDisableCopyOnRead*read_4_disablecopyonread_activation_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp*read_4_disablecopyonread_activation_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:2|
Read_5/DisableCopyOnReadDisableCopyOnRead(read_5_disablecopyonread_activation_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp(read_5_disablecopyonread_activation_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_6/DisableCopyOnReadDisableCopyOnRead"read_6_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp"read_6_disablecopyonread_adam_iter^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0	*
_output_shapes
: x
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_adam_beta_1^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_adam_beta_2^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: w
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_adam_decay^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_10/DisableCopyOnReadDisableCopyOnRead,read_10_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp,read_10_disablecopyonread_adam_learning_rate^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_11/DisableCopyOnReadDisableCopyOnRead!read_11_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp!read_11_disablecopyonread_total_1^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_12/DisableCopyOnReadDisableCopyOnRead!read_12_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp!read_12_disablecopyonread_count_1^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_13/DisableCopyOnReadDisableCopyOnReadread_13_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOpread_13_disablecopyonread_total^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_14/DisableCopyOnReadDisableCopyOnReadread_14_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOpread_14_disablecopyonread_count^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_15/DisableCopyOnReadDisableCopyOnRead;read_15_disablecopyonread_adam_movie_embedding_embeddings_m"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp;read_15_disablecopyonread_adam_movie_embedding_embeddings_m^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_16/DisableCopyOnReadDisableCopyOnRead:read_16_disablecopyonread_adam_user_embedding_embeddings_m"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp:read_16_disablecopyonread_adam_user_embedding_embeddings_m^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_17/DisableCopyOnReadDisableCopyOnRead8read_17_disablecopyonread_adam_fullyconnected_1_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp8read_17_disablecopyonread_adam_fullyconnected_1_kernel_m^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:2�
Read_18/DisableCopyOnReadDisableCopyOnRead6read_18_disablecopyonread_adam_fullyconnected_1_bias_m"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp6read_18_disablecopyonread_adam_fullyconnected_1_bias_m^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:2�
Read_19/DisableCopyOnReadDisableCopyOnRead2read_19_disablecopyonread_adam_activation_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp2read_19_disablecopyonread_adam_activation_kernel_m^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:2�
Read_20/DisableCopyOnReadDisableCopyOnRead0read_20_disablecopyonread_adam_activation_bias_m"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp0read_20_disablecopyonread_adam_activation_bias_m^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_21/DisableCopyOnReadDisableCopyOnRead;read_21_disablecopyonread_adam_movie_embedding_embeddings_v"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp;read_21_disablecopyonread_adam_movie_embedding_embeddings_v^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_22/DisableCopyOnReadDisableCopyOnRead:read_22_disablecopyonread_adam_user_embedding_embeddings_v"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp:read_22_disablecopyonread_adam_user_embedding_embeddings_v^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_23/DisableCopyOnReadDisableCopyOnRead8read_23_disablecopyonread_adam_fullyconnected_1_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp8read_23_disablecopyonread_adam_fullyconnected_1_kernel_v^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:2�
Read_24/DisableCopyOnReadDisableCopyOnRead6read_24_disablecopyonread_adam_fullyconnected_1_bias_v"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp6read_24_disablecopyonread_adam_fullyconnected_1_bias_v^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:2�
Read_25/DisableCopyOnReadDisableCopyOnRead2read_25_disablecopyonread_adam_activation_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp2read_25_disablecopyonread_adam_activation_kernel_v^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes

:2�
Read_26/DisableCopyOnReadDisableCopyOnRead0read_26_disablecopyonread_adam_activation_bias_v"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp0read_26_disablecopyonread_adam_activation_bias_v^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0savev2_const"/device:CPU:0*&
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
 i
Identity_54Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_55IdentityIdentity_54:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_55Identity_55:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
�	
�
J__inference_User-Embedding_layer_call_and_return_conditional_losses_633456

inputs*
embedding_lookup_633450:	�
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_633450Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/633450*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/633450*+
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
�
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_634268

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_634315

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������2:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_633630

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
(__inference_model_6_layer_call_fn_633721
user
item
unknown:	�
	unknown_0:	�
	unknown_1:2
	unknown_2:2
	unknown_3:2
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
GPU 2J 8� *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_633706o
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
�;
�
C__inference_model_6_layer_call_and_return_conditional_losses_633706

inputs
inputs_1(
user_embedding_633677:	�)
movie_embedding_633680:	�)
fullyconnected_1_633689:2%
fullyconnected_1_633691:2#
activation_633695:2
activation_633697:
identity��"Activation/StatefulPartitionedCall�(FullyConnected-1/StatefulPartitionedCall�'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�"dropout_10/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�!dropout_7/StatefulPartitionedCall�!dropout_8/StatefulPartitionedCall�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_633677*
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
GPU 2J 8� *S
fNRL
J__inference_User-Embedding_layer_call_and_return_conditional_losses_633456�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_633680*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_633474�
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
GPU 2J 8� *Q
fLRJ
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_633484�
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_633492�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall&FlattenMovies/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_633506�
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall%FlattenUsers/PartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_633520�
Concat/PartitionedCallPartitionedCall*dropout_6/StatefulPartitionedCall:output:0*dropout_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_Concat_layer_call_and_return_conditional_losses_633529�
!dropout_8/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_633543�
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0fullyconnected_1_633689fullyconnected_1_633691*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_FullyConnected-1_layer_call_and_return_conditional_losses_633556�
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_633574�
"Activation/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0activation_633695activation_633697*
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
GPU 2J 8� *O
fJRH
F__inference_Activation_layer_call_and_return_conditional_losses_633587�
lambda_6/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *M
fHRF
D__inference_lambda_6_layer_call_and_return_conditional_losses_633601�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_633680*
_output_shapes
:	�*
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
IdentityIdentity!lambda_6/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^Activation/StatefulPartitionedCall)^FullyConnected-1/StatefulPartitionedCall(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall*"
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
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
$__inference_signature_wrapper_633948
item
user
unknown:	�
	unknown_0:	�
	unknown_1:2
	unknown_2:2
	unknown_3:2
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
GPU 2J 8� **
f%R#
!__inference__wrapped_model_633441o
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
�
e
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_633492

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_634174

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
�

�
F__inference_Activation_layer_call_and_return_conditional_losses_633587

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
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
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�

e
F__inference_dropout_10_layer_call_and_return_conditional_losses_634310

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������2a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������2:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�

e
F__inference_dropout_10_layer_call_and_return_conditional_losses_633574

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������2a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������2:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_634135

inputs*
embedding_lookup_634125:	�
identity��<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_634125Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/634125*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/634125*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_634125*
_output_shapes
:	�*
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
:����������
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
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_634201

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�5
�
C__inference_model_6_layer_call_and_return_conditional_losses_633669
user
item(
user_embedding_633612:	�)
movie_embedding_633615:	�)
fullyconnected_1_633639:2%
fullyconnected_1_633641:2#
activation_633650:2
activation_633652:
identity��"Activation/StatefulPartitionedCall�(FullyConnected-1/StatefulPartitionedCall�'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_633612*
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
GPU 2J 8� *S
fNRL
J__inference_User-Embedding_layer_call_and_return_conditional_losses_633456�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallitemmovie_embedding_633615*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_633474�
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
GPU 2J 8� *Q
fLRJ
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_633484�
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_633492�
dropout_6/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_633624�
dropout_7/PartitionedCallPartitionedCall%FlattenUsers/PartitionedCall:output:0*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_633630�
Concat/PartitionedCallPartitionedCall"dropout_6/PartitionedCall:output:0"dropout_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_Concat_layer_call_and_return_conditional_losses_633529�
dropout_8/PartitionedCallPartitionedCallConcat/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_633637�
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0fullyconnected_1_633639fullyconnected_1_633641*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_FullyConnected-1_layer_call_and_return_conditional_losses_633556�
dropout_10/PartitionedCallPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_633648�
"Activation/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0activation_633650activation_633652*
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
GPU 2J 8� *O
fJRH
F__inference_Activation_layer_call_and_return_conditional_losses_633587�
lambda_6/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *M
fHRF
D__inference_lambda_6_layer_call_and_return_conditional_losses_633662�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_633615*
_output_shapes
:	�*
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
IdentityIdentity!lambda_6/PartitionedCall:output:0^NoOp*
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
�

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_634196

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
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
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
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�5
�
C__inference_model_6_layer_call_and_return_conditional_losses_633757

inputs
inputs_1(
user_embedding_633728:	�)
movie_embedding_633731:	�)
fullyconnected_1_633740:2%
fullyconnected_1_633742:2#
activation_633746:2
activation_633748:
identity��"Activation/StatefulPartitionedCall�(FullyConnected-1/StatefulPartitionedCall�'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_633728*
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
GPU 2J 8� *S
fNRL
J__inference_User-Embedding_layer_call_and_return_conditional_losses_633456�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_633731*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_633474�
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
GPU 2J 8� *Q
fLRJ
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_633484�
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_633492�
dropout_6/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_633624�
dropout_7/PartitionedCallPartitionedCall%FlattenUsers/PartitionedCall:output:0*
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
GPU 2J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_633630�
Concat/PartitionedCallPartitionedCall"dropout_6/PartitionedCall:output:0"dropout_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_Concat_layer_call_and_return_conditional_losses_633529�
dropout_8/PartitionedCallPartitionedCallConcat/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_633637�
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0fullyconnected_1_633740fullyconnected_1_633742*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_FullyConnected-1_layer_call_and_return_conditional_losses_633556�
dropout_10/PartitionedCallPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_633648�
"Activation/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0activation_633746activation_633748*
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
GPU 2J 8� *O
fJRH
F__inference_Activation_layer_call_and_return_conditional_losses_633587�
lambda_6/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *M
fHRF
D__inference_lambda_6_layer_call_and_return_conditional_losses_633662�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_633731*
_output_shapes
:	�*
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
IdentityIdentity!lambda_6/PartitionedCall:output:0^NoOp*
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
�
E
)__inference_lambda_6_layer_call_fn_634340

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
GPU 2J 8� *M
fHRF
D__inference_lambda_6_layer_call_and_return_conditional_losses_633601`
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
�
F
*__inference_dropout_8_layer_call_fn_634251

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_633637`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_633484

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
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_633624

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
`
D__inference_lambda_6_layer_call_and_return_conditional_losses_634361

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
 *  �?W
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
�	
�
(__inference_model_6_layer_call_fn_633970
inputs_0
inputs_1
unknown:	�
	unknown_0:	�
	unknown_1:2
	unknown_2:2
	unknown_3:2
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
GPU 2J 8� *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_633706o
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
�
�
+__inference_Activation_layer_call_fn_634324

inputs
unknown:2
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
GPU 2J 8� *O
fJRH
F__inference_Activation_layer_call_and_return_conditional_losses_633587o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�w
�
"__inference__traced_restore_634647
file_prefix>
+assignvariableop_movie_embedding_embeddings:	�?
,assignvariableop_1_user_embedding_embeddings:	�<
*assignvariableop_2_fullyconnected_1_kernel:26
(assignvariableop_3_fullyconnected_1_bias:26
$assignvariableop_4_activation_kernel:20
"assignvariableop_5_activation_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: #
assignvariableop_13_total: #
assignvariableop_14_count: H
5assignvariableop_15_adam_movie_embedding_embeddings_m:	�G
4assignvariableop_16_adam_user_embedding_embeddings_m:	�D
2assignvariableop_17_adam_fullyconnected_1_kernel_m:2>
0assignvariableop_18_adam_fullyconnected_1_bias_m:2>
,assignvariableop_19_adam_activation_kernel_m:28
*assignvariableop_20_adam_activation_bias_m:H
5assignvariableop_21_adam_movie_embedding_embeddings_v:	�G
4assignvariableop_22_adam_user_embedding_embeddings_v:	�D
2assignvariableop_23_adam_fullyconnected_1_kernel_v:2>
0assignvariableop_24_adam_fullyconnected_1_bias_v:2>
,assignvariableop_25_adam_activation_kernel_v:28
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
�
F
*__inference_dropout_7_layer_call_fn_634211

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
GPU 2J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_633630`
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
I
-__inference_FlattenUsers_layer_call_fn_634168

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
GPU 2J 8� *Q
fLRJ
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_633484`
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

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_633543

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
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
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
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_633474

inputs*
embedding_lookup_633464:	�
identity��<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_633464Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/633464*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/633464*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_633464*
_output_shapes
:	�*
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
:����������
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
�	
�
(__inference_model_6_layer_call_fn_633988
inputs_0
inputs_1
unknown:	�
	unknown_0:	�
	unknown_1:2
	unknown_2:2
	unknown_3:2
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
GPU 2J 8� *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_633757o
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
�
`
D__inference_lambda_6_layer_call_and_return_conditional_losses_633662

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
 *  �?W
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
n
B__inference_Concat_layer_call_and_return_conditional_losses_634241
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
:���������W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�X
�
C__inference_model_6_layer_call_and_return_conditional_losses_634065
inputs_0
inputs_19
&user_embedding_embedding_lookup_633993:	�:
'movie_embedding_embedding_lookup_633999:	�A
/fullyconnected_1_matmul_readvariableop_resource:2>
0fullyconnected_1_biasadd_readvariableop_resource:2;
)activation_matmul_readvariableop_resource:28
*activation_biasadd_readvariableop_resource:
identity��!Activation/BiasAdd/ReadVariableOp� Activation/MatMul/ReadVariableOp�'FullyConnected-1/BiasAdd/ReadVariableOp�&FullyConnected-1/MatMul/ReadVariableOp� Movie-Embedding/embedding_lookup�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�User-Embedding/embedding_lookupf
User-Embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
User-Embedding/embedding_lookupResourceGather&user_embedding_embedding_lookup_633993User-Embedding/Cast:y:0*
Tindices0*9
_class/
-+loc:@User-Embedding/embedding_lookup/633993*+
_output_shapes
:���������*
dtype0�
(User-Embedding/embedding_lookup/IdentityIdentity(User-Embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@User-Embedding/embedding_lookup/633993*+
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
 Movie-Embedding/embedding_lookupResourceGather'movie_embedding_embedding_lookup_633999Movie-Embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@Movie-Embedding/embedding_lookup/633999*+
_output_shapes
:���������*
dtype0�
)Movie-Embedding/embedding_lookup/IdentityIdentity)Movie-Embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@Movie-Embedding/embedding_lookup/633999*+
_output_shapes
:����������
+Movie-Embedding/embedding_lookup/Identity_1Identity2Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������c
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
valueB"����   �
FlattenMovies/ReshapeReshape4Movie-Embedding/embedding_lookup/Identity_1:output:0FlattenMovies/Const:output:0*
T0*'
_output_shapes
:���������\
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_6/dropout/MulMulFlattenMovies/Reshape:output:0 dropout_6/dropout/Const:output:0*
T0*'
_output_shapes
:���������s
dropout_6/dropout/ShapeShapeFlattenMovies/Reshape:output:0*
T0*
_output_shapes
::���
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������^
dropout_6/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_6/dropout/SelectV2SelectV2"dropout_6/dropout/GreaterEqual:z:0dropout_6/dropout/Mul:z:0"dropout_6/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_7/dropout/MulMulFlattenUsers/Reshape:output:0 dropout_7/dropout/Const:output:0*
T0*'
_output_shapes
:���������r
dropout_7/dropout/ShapeShapeFlattenUsers/Reshape:output:0*
T0*
_output_shapes
::���
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������^
dropout_7/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_7/dropout/SelectV2SelectV2"dropout_7/dropout/GreaterEqual:z:0dropout_7/dropout/Mul:z:0"dropout_7/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������T
Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
Concat/concatConcatV2#dropout_6/dropout/SelectV2:output:0#dropout_7/dropout/SelectV2:output:0Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_8/dropout/MulMulConcat/concat:output:0 dropout_8/dropout/Const:output:0*
T0*'
_output_shapes
:���������k
dropout_8/dropout/ShapeShapeConcat/concat:output:0*
T0*
_output_shapes
::���
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
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
:���������^
dropout_8/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_8/dropout/SelectV2SelectV2"dropout_8/dropout/GreaterEqual:z:0dropout_8/dropout/Mul:z:0"dropout_8/dropout/Const_1:output:0*
T0*'
_output_shapes
:����������
&FullyConnected-1/MatMul/ReadVariableOpReadVariableOp/fullyconnected_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
FullyConnected-1/MatMulMatMul#dropout_8/dropout/SelectV2:output:0.FullyConnected-1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'FullyConnected-1/BiasAdd/ReadVariableOpReadVariableOp0fullyconnected_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
FullyConnected-1/BiasAddBiasAdd!FullyConnected-1/MatMul:product:0/FullyConnected-1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
FullyConnected-1/ReluRelu!FullyConnected-1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_10/dropout/MulMul#FullyConnected-1/Relu:activations:0!dropout_10/dropout/Const:output:0*
T0*'
_output_shapes
:���������2y
dropout_10/dropout/ShapeShape#FullyConnected-1/Relu:activations:0*
T0*
_output_shapes
::���
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*'
_output_shapes
:���������2*
dtype0f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������2_
dropout_10/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_10/dropout/SelectV2SelectV2#dropout_10/dropout/GreaterEqual:z:0dropout_10/dropout/Mul:z:0#dropout_10/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������2�
 Activation/MatMul/ReadVariableOpReadVariableOp)activation_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
Activation/MatMulMatMul$dropout_10/dropout/SelectV2:output:0(Activation/MatMul/ReadVariableOp:value:0*
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
lambda_6/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �@v
lambda_6/mulMullambda_6/mul/x:output:0Activation/Sigmoid:y:0*
T0*'
_output_shapes
:���������S
lambda_6/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?r
lambda_6/addAddV2lambda_6/mul:z:0lambda_6/add/y:output:0*
T0*'
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp'movie_embedding_embedding_lookup_633999*
_output_shapes
:	�*
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
IdentityIdentitylambda_6/add:z:0^NoOp*
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
�
c
*__inference_dropout_6_layer_call_fn_634179

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_633506o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_633520

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
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
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
�
`
D__inference_lambda_6_layer_call_and_return_conditional_losses_634353

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
 *  �?W
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
�

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_634223

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
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
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
 
_user_specified_nameinputs"�
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
lambda_60
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
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
(__inference_model_6_layer_call_fn_633721
(__inference_model_6_layer_call_fn_633772
(__inference_model_6_layer_call_fn_633970
(__inference_model_6_layer_call_fn_633988�
���
FullArgSpec)
args!�
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
annotations� *
 zrtrace_0zstrace_1zttrace_2zutrace_3
�
vtrace_0
wtrace_1
xtrace_2
ytrace_32�
C__inference_model_6_layer_call_and_return_conditional_losses_633608
C__inference_model_6_layer_call_and_return_conditional_losses_633669
C__inference_model_6_layer_call_and_return_conditional_losses_634065
C__inference_model_6_layer_call_and_return_conditional_losses_634114�
���
FullArgSpec)
args!�
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
annotations� *
 zvtrace_0zwtrace_1zxtrace_2zytrace_3
�B�
!__inference__wrapped_model_633441UserItem"�
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
0__inference_Movie-Embedding_layer_call_fn_634121�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_634135�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
-:+	�2Movie-Embedding/embeddings
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
/__inference_User-Embedding_layer_call_fn_634142�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
J__inference_User-Embedding_layer_call_and_return_conditional_losses_634152�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
,:*	�2User-Embedding/embeddings
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
.__inference_FlattenMovies_layer_call_fn_634157�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_634163�
���
FullArgSpec
args�

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
annotations� *
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
-__inference_FlattenUsers_layer_call_fn_634168�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_634174�
���
FullArgSpec
args�

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
annotations� *
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
*__inference_dropout_6_layer_call_fn_634179
*__inference_dropout_6_layer_call_fn_634184�
���
FullArgSpec!
args�
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
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_dropout_6_layer_call_and_return_conditional_losses_634196
E__inference_dropout_6_layer_call_and_return_conditional_losses_634201�
���
FullArgSpec!
args�
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
annotations� *
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
*__inference_dropout_7_layer_call_fn_634206
*__inference_dropout_7_layer_call_fn_634211�
���
FullArgSpec!
args�
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
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_dropout_7_layer_call_and_return_conditional_losses_634223
E__inference_dropout_7_layer_call_and_return_conditional_losses_634228�
���
FullArgSpec!
args�
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
annotations� *
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
'__inference_Concat_layer_call_fn_634234�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
B__inference_Concat_layer_call_and_return_conditional_losses_634241�
���
FullArgSpec
args�

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
annotations� *
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
*__inference_dropout_8_layer_call_fn_634246
*__inference_dropout_8_layer_call_fn_634251�
���
FullArgSpec!
args�
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
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_dropout_8_layer_call_and_return_conditional_losses_634263
E__inference_dropout_8_layer_call_and_return_conditional_losses_634268�
���
FullArgSpec!
args�
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
annotations� *
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
1__inference_FullyConnected-1_layer_call_fn_634277�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
L__inference_FullyConnected-1_layer_call_and_return_conditional_losses_634288�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
):'22FullyConnected-1/kernel
#:!22FullyConnected-1/bias
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
+__inference_dropout_10_layer_call_fn_634293
+__inference_dropout_10_layer_call_fn_634298�
���
FullArgSpec!
args�
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
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_10_layer_call_and_return_conditional_losses_634310
F__inference_dropout_10_layer_call_and_return_conditional_losses_634315�
���
FullArgSpec!
args�
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
annotations� *
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
+__inference_Activation_layer_call_fn_634324�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
F__inference_Activation_layer_call_and_return_conditional_losses_634335�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
#:!22Activation/kernel
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
)__inference_lambda_6_layer_call_fn_634340
)__inference_lambda_6_layer_call_fn_634345�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
D__inference_lambda_6_layer_call_and_return_conditional_losses_634353
D__inference_lambda_6_layer_call_and_return_conditional_losses_634361�
���
FullArgSpec)
args!�
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
annotations� *
 z�trace_0z�trace_1
�
�trace_02�
__inference_loss_fn_0_634370�
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
(__inference_model_6_layer_call_fn_633721UserItem"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
(__inference_model_6_layer_call_fn_633772UserItem"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
(__inference_model_6_layer_call_fn_633970inputs_0inputs_1"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
(__inference_model_6_layer_call_fn_633988inputs_0inputs_1"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
C__inference_model_6_layer_call_and_return_conditional_losses_633608UserItem"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
C__inference_model_6_layer_call_and_return_conditional_losses_633669UserItem"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
C__inference_model_6_layer_call_and_return_conditional_losses_634065inputs_0inputs_1"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
C__inference_model_6_layer_call_and_return_conditional_losses_634114inputs_0inputs_1"�
���
FullArgSpec)
args!�
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
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
$__inference_signature_wrapper_633948ItemUser"�
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
0__inference_Movie-Embedding_layer_call_fn_634121inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_634135inputs"�
���
FullArgSpec
args�

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
annotations� *
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
/__inference_User-Embedding_layer_call_fn_634142inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
J__inference_User-Embedding_layer_call_and_return_conditional_losses_634152inputs"�
���
FullArgSpec
args�

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
annotations� *
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
.__inference_FlattenMovies_layer_call_fn_634157inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_634163inputs"�
���
FullArgSpec
args�

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
annotations� *
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
-__inference_FlattenUsers_layer_call_fn_634168inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_634174inputs"�
���
FullArgSpec
args�

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
annotations� *
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
*__inference_dropout_6_layer_call_fn_634179inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
*__inference_dropout_6_layer_call_fn_634184inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
E__inference_dropout_6_layer_call_and_return_conditional_losses_634196inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
E__inference_dropout_6_layer_call_and_return_conditional_losses_634201inputs"�
���
FullArgSpec!
args�
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
annotations� *
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
*__inference_dropout_7_layer_call_fn_634206inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
*__inference_dropout_7_layer_call_fn_634211inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
E__inference_dropout_7_layer_call_and_return_conditional_losses_634223inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
E__inference_dropout_7_layer_call_and_return_conditional_losses_634228inputs"�
���
FullArgSpec!
args�
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
annotations� *
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
'__inference_Concat_layer_call_fn_634234inputs_0inputs_1"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
B__inference_Concat_layer_call_and_return_conditional_losses_634241inputs_0inputs_1"�
���
FullArgSpec
args�

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
annotations� *
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
*__inference_dropout_8_layer_call_fn_634246inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
*__inference_dropout_8_layer_call_fn_634251inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
E__inference_dropout_8_layer_call_and_return_conditional_losses_634263inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
E__inference_dropout_8_layer_call_and_return_conditional_losses_634268inputs"�
���
FullArgSpec!
args�
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
annotations� *
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
1__inference_FullyConnected-1_layer_call_fn_634277inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
L__inference_FullyConnected-1_layer_call_and_return_conditional_losses_634288inputs"�
���
FullArgSpec
args�

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
annotations� *
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
+__inference_dropout_10_layer_call_fn_634293inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
+__inference_dropout_10_layer_call_fn_634298inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
F__inference_dropout_10_layer_call_and_return_conditional_losses_634310inputs"�
���
FullArgSpec!
args�
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
annotations� *
 
�B�
F__inference_dropout_10_layer_call_and_return_conditional_losses_634315inputs"�
���
FullArgSpec!
args�
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
annotations� *
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
+__inference_Activation_layer_call_fn_634324inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
F__inference_Activation_layer_call_and_return_conditional_losses_634335inputs"�
���
FullArgSpec
args�

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
annotations� *
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
)__inference_lambda_6_layer_call_fn_634340inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
)__inference_lambda_6_layer_call_fn_634345inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
D__inference_lambda_6_layer_call_and_return_conditional_losses_634353inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
D__inference_lambda_6_layer_call_and_return_conditional_losses_634361inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
__inference_loss_fn_0_634370"�
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
2:0	�2!Adam/Movie-Embedding/embeddings/m
1:/	�2 Adam/User-Embedding/embeddings/m
.:,22Adam/FullyConnected-1/kernel/m
(:&22Adam/FullyConnected-1/bias/m
(:&22Adam/Activation/kernel/m
": 2Adam/Activation/bias/m
2:0	�2!Adam/Movie-Embedding/embeddings/v
1:/	�2 Adam/User-Embedding/embeddings/v
.:,22Adam/FullyConnected-1/kernel/v
(:&22Adam/FullyConnected-1/bias/v
(:&22Adam/Activation/kernel/v
": 2Adam/Activation/bias/v�
F__inference_Activation_layer_call_and_return_conditional_losses_634335cde/�,
%�"
 �
inputs���������2
� ",�)
"�
tensor_0���������
� �
+__inference_Activation_layer_call_fn_634324Xde/�,
%�"
 �
inputs���������2
� "!�
unknown����������
B__inference_Concat_layer_call_and_return_conditional_losses_634241�Z�W
P�M
K�H
"�
inputs_0���������
"�
inputs_1���������
� ",�)
"�
tensor_0���������
� �
'__inference_Concat_layer_call_fn_634234Z�W
P�M
K�H
"�
inputs_0���������
"�
inputs_1���������
� "!�
unknown����������
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_634163c3�0
)�&
$�!
inputs���������
� ",�)
"�
tensor_0���������
� �
.__inference_FlattenMovies_layer_call_fn_634157X3�0
)�&
$�!
inputs���������
� "!�
unknown����������
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_634174c3�0
)�&
$�!
inputs���������
� ",�)
"�
tensor_0���������
� �
-__inference_FlattenUsers_layer_call_fn_634168X3�0
)�&
$�!
inputs���������
� "!�
unknown����������
L__inference_FullyConnected-1_layer_call_and_return_conditional_losses_634288cUV/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������2
� �
1__inference_FullyConnected-1_layer_call_fn_634277XUV/�,
%�"
 �
inputs���������
� "!�
unknown���������2�
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_634135f /�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������
� �
0__inference_Movie-Embedding_layer_call_fn_634121[ /�,
%�"
 �
inputs���������
� "%�"
unknown����������
J__inference_User-Embedding_layer_call_and_return_conditional_losses_634152f'/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������
� �
/__inference_User-Embedding_layer_call_fn_634142['/�,
%�"
 �
inputs���������
� "%�"
unknown����������
!__inference__wrapped_model_633441�' UVdeR�O
H�E
C�@
�
User���������
�
Item���������
� "3�0
.
lambda_6"�
lambda_6����������
F__inference_dropout_10_layer_call_and_return_conditional_losses_634310c3�0
)�&
 �
inputs���������2
p
� ",�)
"�
tensor_0���������2
� �
F__inference_dropout_10_layer_call_and_return_conditional_losses_634315c3�0
)�&
 �
inputs���������2
p 
� ",�)
"�
tensor_0���������2
� �
+__inference_dropout_10_layer_call_fn_634293X3�0
)�&
 �
inputs���������2
p
� "!�
unknown���������2�
+__inference_dropout_10_layer_call_fn_634298X3�0
)�&
 �
inputs���������2
p 
� "!�
unknown���������2�
E__inference_dropout_6_layer_call_and_return_conditional_losses_634196c3�0
)�&
 �
inputs���������
p
� ",�)
"�
tensor_0���������
� �
E__inference_dropout_6_layer_call_and_return_conditional_losses_634201c3�0
)�&
 �
inputs���������
p 
� ",�)
"�
tensor_0���������
� �
*__inference_dropout_6_layer_call_fn_634179X3�0
)�&
 �
inputs���������
p
� "!�
unknown����������
*__inference_dropout_6_layer_call_fn_634184X3�0
)�&
 �
inputs���������
p 
� "!�
unknown����������
E__inference_dropout_7_layer_call_and_return_conditional_losses_634223c3�0
)�&
 �
inputs���������
p
� ",�)
"�
tensor_0���������
� �
E__inference_dropout_7_layer_call_and_return_conditional_losses_634228c3�0
)�&
 �
inputs���������
p 
� ",�)
"�
tensor_0���������
� �
*__inference_dropout_7_layer_call_fn_634206X3�0
)�&
 �
inputs���������
p
� "!�
unknown����������
*__inference_dropout_7_layer_call_fn_634211X3�0
)�&
 �
inputs���������
p 
� "!�
unknown����������
E__inference_dropout_8_layer_call_and_return_conditional_losses_634263c3�0
)�&
 �
inputs���������
p
� ",�)
"�
tensor_0���������
� �
E__inference_dropout_8_layer_call_and_return_conditional_losses_634268c3�0
)�&
 �
inputs���������
p 
� ",�)
"�
tensor_0���������
� �
*__inference_dropout_8_layer_call_fn_634246X3�0
)�&
 �
inputs���������
p
� "!�
unknown����������
*__inference_dropout_8_layer_call_fn_634251X3�0
)�&
 �
inputs���������
p 
� "!�
unknown����������
D__inference_lambda_6_layer_call_and_return_conditional_losses_634353g7�4
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
D__inference_lambda_6_layer_call_and_return_conditional_losses_634361g7�4
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
)__inference_lambda_6_layer_call_fn_634340\7�4
-�*
 �
inputs���������

 
p
� "!�
unknown����������
)__inference_lambda_6_layer_call_fn_634345\7�4
-�*
 �
inputs���������

 
p 
� "!�
unknown���������D
__inference_loss_fn_0_634370$ �

� 
� "�
unknown �
C__inference_model_6_layer_call_and_return_conditional_losses_633608�' UVdeZ�W
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
C__inference_model_6_layer_call_and_return_conditional_losses_633669�' UVdeZ�W
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
C__inference_model_6_layer_call_and_return_conditional_losses_634065�' UVdeb�_
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
C__inference_model_6_layer_call_and_return_conditional_losses_634114�' UVdeb�_
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
(__inference_model_6_layer_call_fn_633721�' UVdeZ�W
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
(__inference_model_6_layer_call_fn_633772�' UVdeZ�W
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
(__inference_model_6_layer_call_fn_633970�' UVdeb�_
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
(__inference_model_6_layer_call_fn_633988�' UVdeb�_
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
$__inference_signature_wrapper_633948�' UVde]�Z
� 
S�P
&
Item�
item���������
&
User�
user���������"3�0
.
lambda_6"�
lambda_6���������