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
 �"serve*2.11.02unknown8��
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
:
2*/
shared_name Adam/FullyConnected-1/kernel/v
�
2Adam/FullyConnected-1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/kernel/v*
_output_shapes

:
2*
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
shape:	�*2
shared_name#!Adam/Movie-Embedding/embeddings/v
�
5Adam/Movie-Embedding/embeddings/v/Read/ReadVariableOpReadVariableOp!Adam/Movie-Embedding/embeddings/v*
_output_shapes
:	�*
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
:
2*/
shared_name Adam/FullyConnected-1/kernel/m
�
2Adam/FullyConnected-1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/kernel/m*
_output_shapes

:
2*
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
shape:	�*2
shared_name#!Adam/Movie-Embedding/embeddings/m
�
5Adam/Movie-Embedding/embeddings/m/Read/ReadVariableOpReadVariableOp!Adam/Movie-Embedding/embeddings/m*
_output_shapes
:	�*
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
:
2*(
shared_nameFullyConnected-1/kernel
�
+FullyConnected-1/kernel/Read/ReadVariableOpReadVariableOpFullyConnected-1/kernel*
_output_shapes

:
2*
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
shape:	�*+
shared_nameMovie-Embedding/embeddings
�
.Movie-Embedding/embeddings/Read/ReadVariableOpReadVariableOpMovie-Embedding/embeddings*
_output_shapes
:	�*
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
GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_95325

NoOpNoOp
�F
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�F
value�EB�E B�E
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
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*

_init_input_shape* 

_init_input_shape* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#
embeddings*
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias*
�
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias*
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses* 
.
0
#1
<2
=3
D4
E5*
.
0
#1
<2
=3
D4
E5*
	
L0* 
�
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Rtrace_0
Strace_1
Ttrace_2
Utrace_3* 
6
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3* 
* 
�
Ziter

[beta_1

\beta_2
	]decay
^learning_ratem�#m�<m�=m�Dm�Em�v�#v�<v�=v�Dv�Ev�*

_serving_default* 
* 
* 

0*

0*
	
L0* 
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

etrace_0* 

ftrace_0* 
nh
VARIABLE_VALUEMovie-Embedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

#0*

#0*
* 
�
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

ltrace_0* 

mtrace_0* 
mg
VARIABLE_VALUEUser-Embedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

strace_0* 

ttrace_0* 
* 
* 
* 
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

ztrace_0* 

{trace_0* 
* 
* 
* 
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

<0
=1*

<0
=1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
ga
VARIABLE_VALUEFullyConnected-1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEFullyConnected-1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

D0
E1*

D0
E1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*
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
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�trace_0* 
* 
J
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
9*
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
	
L0* 
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
GPU 2J 8� *'
f"R 
__inference__traced_save_95708
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_95799ނ
�
_
C__inference_lambda_2_layer_call_and_return_conditional_losses_95096

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
�
�
0__inference_FullyConnected-1_layer_call_fn_95537

inputs
unknown:
2
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
GPU 2J 8� *T
fORM
K__inference_FullyConnected-1_layer_call_and_return_conditional_losses_95027o
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
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
d
H__inference_FlattenMovies_layer_call_and_return_conditional_losses_94997

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
�
'__inference_model_2_layer_call_fn_95347
inputs_0
inputs_1
unknown:	�
	unknown_0:	�
	unknown_1:
2
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
GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_95065o
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
�
I__inference_User-Embedding_layer_call_and_return_conditional_losses_94969

inputs)
embedding_lookup_94963:	�
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_94963Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/94963*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/94963*+
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
�*
�
B__inference_model_2_layer_call_and_return_conditional_losses_95065

inputs
inputs_1'
user_embedding_94970:	�(
movie_embedding_94988:	�(
fullyconnected_1_95028:
2$
fullyconnected_1_95030:2"
activation_95045:2
activation_95047:
identity��"Activation/StatefulPartitionedCall�(FullyConnected-1/StatefulPartitionedCall�'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_94970*
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
GPU 2J 8� *R
fMRK
I__inference_User-Embedding_layer_call_and_return_conditional_losses_94969�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_94988*
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
J__inference_Movie-Embedding_layer_call_and_return_conditional_losses_94987�
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
GPU 2J 8� *Q
fLRJ
H__inference_FlattenMovies_layer_call_and_return_conditional_losses_94997�
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
GPU 2J 8� *P
fKRI
G__inference_FlattenUsers_layer_call_and_return_conditional_losses_95005�
Concat/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
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
GPU 2J 8� *J
fERC
A__inference_Concat_layer_call_and_return_conditional_losses_95014�
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0fullyconnected_1_95028fullyconnected_1_95030*
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
GPU 2J 8� *T
fORM
K__inference_FullyConnected-1_layer_call_and_return_conditional_losses_95027�
"Activation/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0activation_95045activation_95047*
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
GPU 2J 8� *N
fIRG
E__inference_Activation_layer_call_and_return_conditional_losses_95044�
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
GPU 2J 8� *L
fGRE
C__inference_lambda_2_layer_call_and_return_conditional_losses_95058�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_94988*
_output_shapes
:	�*
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
�
'__inference_model_2_layer_call_fn_95365
inputs_0
inputs_1
unknown:	�
	unknown_0:	�
	unknown_1:
2
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
GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_95204o
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
�
c
G__inference_FlattenUsers_layer_call_and_return_conditional_losses_95515

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
�*
�
B__inference_model_2_layer_call_and_return_conditional_losses_95204

inputs
inputs_1'
user_embedding_95179:	�(
movie_embedding_95182:	�(
fullyconnected_1_95188:
2$
fullyconnected_1_95190:2"
activation_95193:2
activation_95195:
identity��"Activation/StatefulPartitionedCall�(FullyConnected-1/StatefulPartitionedCall�'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_95179*
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
GPU 2J 8� *R
fMRK
I__inference_User-Embedding_layer_call_and_return_conditional_losses_94969�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_95182*
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
J__inference_Movie-Embedding_layer_call_and_return_conditional_losses_94987�
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
GPU 2J 8� *Q
fLRJ
H__inference_FlattenMovies_layer_call_and_return_conditional_losses_94997�
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
GPU 2J 8� *P
fKRI
G__inference_FlattenUsers_layer_call_and_return_conditional_losses_95005�
Concat/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
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
GPU 2J 8� *J
fERC
A__inference_Concat_layer_call_and_return_conditional_losses_95014�
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0fullyconnected_1_95188fullyconnected_1_95190*
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
GPU 2J 8� *T
fORM
K__inference_FullyConnected-1_layer_call_and_return_conditional_losses_95027�
"Activation/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0activation_95193activation_95195*
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
GPU 2J 8� *N
fIRG
E__inference_Activation_layer_call_and_return_conditional_losses_95044�
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
GPU 2J 8� *L
fGRE
C__inference_lambda_2_layer_call_and_return_conditional_losses_95096�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_95182*
_output_shapes
:	�*
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

�
E__inference_Activation_layer_call_and_return_conditional_losses_95568

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

�
K__inference_FullyConnected-1_layer_call_and_return_conditional_losses_95548

inputs0
matmul_readvariableop_resource:
2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
2*
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
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�w
�
!__inference__traced_restore_95799
file_prefix>
+assignvariableop_movie_embedding_embeddings:	�?
,assignvariableop_1_user_embedding_embeddings:	�<
*assignvariableop_2_fullyconnected_1_kernel:
26
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
5assignvariableop_15_adam_movie_embedding_embeddings_m:	�G
4assignvariableop_16_adam_user_embedding_embeddings_m:	�D
2assignvariableop_17_adam_fullyconnected_1_kernel_m:
2>
0assignvariableop_18_adam_fullyconnected_1_bias_m:2>
,assignvariableop_19_adam_activation_kernel_m:28
*assignvariableop_20_adam_activation_bias_m:H
5assignvariableop_21_adam_movie_embedding_embeddings_v:	�G
4assignvariableop_22_adam_user_embedding_embeddings_v:	�D
2assignvariableop_23_adam_fullyconnected_1_kernel_v:
2>
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
�
�
*__inference_Activation_layer_call_fn_95557

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
GPU 2J 8� *N
fIRG
E__inference_Activation_layer_call_and_return_conditional_losses_95044o
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
�
�
/__inference_Movie-Embedding_layer_call_fn_95462

inputs
unknown:	�
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
J__inference_Movie-Embedding_layer_call_and_return_conditional_losses_94987s
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
_
C__inference_lambda_2_layer_call_and_return_conditional_losses_95058

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
m
A__inference_Concat_layer_call_and_return_conditional_losses_95528
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
�
�
J__inference_Movie-Embedding_layer_call_and_return_conditional_losses_94987

inputs)
embedding_lookup_94977:	�
identity��<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_94977Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/94977*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/94977*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_94977*
_output_shapes
:	�*
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
�

�
K__inference_FullyConnected-1_layer_call_and_return_conditional_losses_95027

inputs0
matmul_readvariableop_resource:
2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
2*
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
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
R
&__inference_Concat_layer_call_fn_95521
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
GPU 2J 8� *J
fERC
A__inference_Concat_layer_call_and_return_conditional_losses_95014`
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
�>
�
__inference__traced_save_95708
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
�: :	�:	�:
2:2:2:: : : : : : : : : :	�:	�:
2:2:2::	�:	�:
2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
2: 

_output_shapes
:2:$ 

_output_shapes

:2: 
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
: :%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: 
�
I
-__inference_FlattenMovies_layer_call_fn_95498

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
H__inference_FlattenMovies_layer_call_and_return_conditional_losses_94997`
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
�
�
J__inference_Movie-Embedding_layer_call_and_return_conditional_losses_95476

inputs)
embedding_lookup_95466:	�
identity��<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_95466Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/95466*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/95466*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_95466*
_output_shapes
:	�*
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
�	
�
#__inference_signature_wrapper_95325
item
user
unknown:	�
	unknown_0:	�
	unknown_1:
2
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
GPU 2J 8� *)
f$R"
 __inference__wrapped_model_94950o
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
�5
�
B__inference_model_2_layer_call_and_return_conditional_losses_95410
inputs_0
inputs_18
%user_embedding_embedding_lookup_95370:	�9
&movie_embedding_embedding_lookup_95376:	�A
/fullyconnected_1_matmul_readvariableop_resource:
2>
0fullyconnected_1_biasadd_readvariableop_resource:2;
)activation_matmul_readvariableop_resource:28
*activation_biasadd_readvariableop_resource:
identity��!Activation/BiasAdd/ReadVariableOp� Activation/MatMul/ReadVariableOp�'FullyConnected-1/BiasAdd/ReadVariableOp�&FullyConnected-1/MatMul/ReadVariableOp� Movie-Embedding/embedding_lookup�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�User-Embedding/embedding_lookupf
User-Embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
User-Embedding/embedding_lookupResourceGather%user_embedding_embedding_lookup_95370User-Embedding/Cast:y:0*
Tindices0*8
_class.
,*loc:@User-Embedding/embedding_lookup/95370*+
_output_shapes
:���������*
dtype0�
(User-Embedding/embedding_lookup/IdentityIdentity(User-Embedding/embedding_lookup:output:0*
T0*8
_class.
,*loc:@User-Embedding/embedding_lookup/95370*+
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
 Movie-Embedding/embedding_lookupResourceGather&movie_embedding_embedding_lookup_95376Movie-Embedding/Cast:y:0*
Tindices0*9
_class/
-+loc:@Movie-Embedding/embedding_lookup/95376*+
_output_shapes
:���������*
dtype0�
)Movie-Embedding/embedding_lookup/IdentityIdentity)Movie-Embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@Movie-Embedding/embedding_lookup/95376*+
_output_shapes
:����������
+Movie-Embedding/embedding_lookup/Identity_1Identity2Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������d
FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
FlattenMovies/ReshapeReshape4Movie-Embedding/embedding_lookup/Identity_1:output:0FlattenMovies/Const:output:0*
T0*'
_output_shapes
:���������c
FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
FlattenUsers/ReshapeReshape3User-Embedding/embedding_lookup/Identity_1:output:0FlattenUsers/Const:output:0*
T0*'
_output_shapes
:���������T
Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
Concat/concatConcatV2FlattenMovies/Reshape:output:0FlattenUsers/Reshape:output:0Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������
�
&FullyConnected-1/MatMul/ReadVariableOpReadVariableOp/fullyconnected_1_matmul_readvariableop_resource*
_output_shapes

:
2*
dtype0�
FullyConnected-1/MatMulMatMulConcat/concat:output:0.FullyConnected-1/MatMul/ReadVariableOp:value:0*
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
:���������2�
 Activation/MatMul/ReadVariableOpReadVariableOp)activation_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
Activation/MatMulMatMul#FullyConnected-1/Relu:activations:0(Activation/MatMul/ReadVariableOp:value:0*
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
 *  �?r
lambda_2/addAddV2lambda_2/mul:z:0lambda_2/add/y:output:0*
T0*'
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp&movie_embedding_embedding_lookup_95376*
_output_shapes
:	�*
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
�*
�
B__inference_model_2_layer_call_and_return_conditional_losses_95295
user
item'
user_embedding_95270:	�(
movie_embedding_95273:	�(
fullyconnected_1_95279:
2$
fullyconnected_1_95281:2"
activation_95284:2
activation_95286:
identity��"Activation/StatefulPartitionedCall�(FullyConnected-1/StatefulPartitionedCall�'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_95270*
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
GPU 2J 8� *R
fMRK
I__inference_User-Embedding_layer_call_and_return_conditional_losses_94969�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallitemmovie_embedding_95273*
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
J__inference_Movie-Embedding_layer_call_and_return_conditional_losses_94987�
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
GPU 2J 8� *Q
fLRJ
H__inference_FlattenMovies_layer_call_and_return_conditional_losses_94997�
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
GPU 2J 8� *P
fKRI
G__inference_FlattenUsers_layer_call_and_return_conditional_losses_95005�
Concat/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
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
GPU 2J 8� *J
fERC
A__inference_Concat_layer_call_and_return_conditional_losses_95014�
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0fullyconnected_1_95279fullyconnected_1_95281*
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
GPU 2J 8� *T
fORM
K__inference_FullyConnected-1_layer_call_and_return_conditional_losses_95027�
"Activation/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0activation_95284activation_95286*
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
GPU 2J 8� *N
fIRG
E__inference_Activation_layer_call_and_return_conditional_losses_95044�
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
GPU 2J 8� *L
fGRE
C__inference_lambda_2_layer_call_and_return_conditional_losses_95096�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_95273*
_output_shapes
:	�*
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
�*
�
B__inference_model_2_layer_call_and_return_conditional_losses_95266
user
item'
user_embedding_95241:	�(
movie_embedding_95244:	�(
fullyconnected_1_95250:
2$
fullyconnected_1_95252:2"
activation_95255:2
activation_95257:
identity��"Activation/StatefulPartitionedCall�(FullyConnected-1/StatefulPartitionedCall�'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_95241*
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
GPU 2J 8� *R
fMRK
I__inference_User-Embedding_layer_call_and_return_conditional_losses_94969�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallitemmovie_embedding_95244*
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
J__inference_Movie-Embedding_layer_call_and_return_conditional_losses_94987�
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
GPU 2J 8� *Q
fLRJ
H__inference_FlattenMovies_layer_call_and_return_conditional_losses_94997�
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
GPU 2J 8� *P
fKRI
G__inference_FlattenUsers_layer_call_and_return_conditional_losses_95005�
Concat/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
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
GPU 2J 8� *J
fERC
A__inference_Concat_layer_call_and_return_conditional_losses_95014�
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0fullyconnected_1_95250fullyconnected_1_95252*
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
GPU 2J 8� *T
fORM
K__inference_FullyConnected-1_layer_call_and_return_conditional_losses_95027�
"Activation/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0activation_95255activation_95257*
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
GPU 2J 8� *N
fIRG
E__inference_Activation_layer_call_and_return_conditional_losses_95044�
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
GPU 2J 8� *L
fGRE
C__inference_lambda_2_layer_call_and_return_conditional_losses_95058�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_95244*
_output_shapes
:	�*
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
D
(__inference_lambda_2_layer_call_fn_95578

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
GPU 2J 8� *L
fGRE
C__inference_lambda_2_layer_call_and_return_conditional_losses_95096`
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
�
d
H__inference_FlattenMovies_layer_call_and_return_conditional_losses_95504

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
�
c
G__inference_FlattenUsers_layer_call_and_return_conditional_losses_95005

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
�
'__inference_model_2_layer_call_fn_95237
user
item
unknown:	�
	unknown_0:	�
	unknown_1:
2
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
GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_95204o
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
H
,__inference_FlattenUsers_layer_call_fn_95509

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
GPU 2J 8� *P
fKRI
G__inference_FlattenUsers_layer_call_and_return_conditional_losses_95005`
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
__inference_loss_fn_0_95603X
Emovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource:	�
identity��<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpEmovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�*
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
�
'__inference_model_2_layer_call_fn_95080
user
item
unknown:	�
	unknown_0:	�
	unknown_1:
2
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
GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_95065o
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
�5
�
B__inference_model_2_layer_call_and_return_conditional_losses_95455
inputs_0
inputs_18
%user_embedding_embedding_lookup_95415:	�9
&movie_embedding_embedding_lookup_95421:	�A
/fullyconnected_1_matmul_readvariableop_resource:
2>
0fullyconnected_1_biasadd_readvariableop_resource:2;
)activation_matmul_readvariableop_resource:28
*activation_biasadd_readvariableop_resource:
identity��!Activation/BiasAdd/ReadVariableOp� Activation/MatMul/ReadVariableOp�'FullyConnected-1/BiasAdd/ReadVariableOp�&FullyConnected-1/MatMul/ReadVariableOp� Movie-Embedding/embedding_lookup�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�User-Embedding/embedding_lookupf
User-Embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
User-Embedding/embedding_lookupResourceGather%user_embedding_embedding_lookup_95415User-Embedding/Cast:y:0*
Tindices0*8
_class.
,*loc:@User-Embedding/embedding_lookup/95415*+
_output_shapes
:���������*
dtype0�
(User-Embedding/embedding_lookup/IdentityIdentity(User-Embedding/embedding_lookup:output:0*
T0*8
_class.
,*loc:@User-Embedding/embedding_lookup/95415*+
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
 Movie-Embedding/embedding_lookupResourceGather&movie_embedding_embedding_lookup_95421Movie-Embedding/Cast:y:0*
Tindices0*9
_class/
-+loc:@Movie-Embedding/embedding_lookup/95421*+
_output_shapes
:���������*
dtype0�
)Movie-Embedding/embedding_lookup/IdentityIdentity)Movie-Embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@Movie-Embedding/embedding_lookup/95421*+
_output_shapes
:����������
+Movie-Embedding/embedding_lookup/Identity_1Identity2Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������d
FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
FlattenMovies/ReshapeReshape4Movie-Embedding/embedding_lookup/Identity_1:output:0FlattenMovies/Const:output:0*
T0*'
_output_shapes
:���������c
FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
FlattenUsers/ReshapeReshape3User-Embedding/embedding_lookup/Identity_1:output:0FlattenUsers/Const:output:0*
T0*'
_output_shapes
:���������T
Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
Concat/concatConcatV2FlattenMovies/Reshape:output:0FlattenUsers/Reshape:output:0Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������
�
&FullyConnected-1/MatMul/ReadVariableOpReadVariableOp/fullyconnected_1_matmul_readvariableop_resource*
_output_shapes

:
2*
dtype0�
FullyConnected-1/MatMulMatMulConcat/concat:output:0.FullyConnected-1/MatMul/ReadVariableOp:value:0*
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
:���������2�
 Activation/MatMul/ReadVariableOpReadVariableOp)activation_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
Activation/MatMulMatMul#FullyConnected-1/Relu:activations:0(Activation/MatMul/ReadVariableOp:value:0*
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
 *  �?r
lambda_2/addAddV2lambda_2/mul:z:0lambda_2/add/y:output:0*
T0*'
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp&movie_embedding_embedding_lookup_95421*
_output_shapes
:	�*
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
k
A__inference_Concat_layer_call_and_return_conditional_losses_95014

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
�4
�
 __inference__wrapped_model_94950
user
item@
-model_2_user_embedding_embedding_lookup_94914:	�A
.model_2_movie_embedding_embedding_lookup_94920:	�I
7model_2_fullyconnected_1_matmul_readvariableop_resource:
2F
8model_2_fullyconnected_1_biasadd_readvariableop_resource:2C
1model_2_activation_matmul_readvariableop_resource:2@
2model_2_activation_biasadd_readvariableop_resource:
identity��)model_2/Activation/BiasAdd/ReadVariableOp�(model_2/Activation/MatMul/ReadVariableOp�/model_2/FullyConnected-1/BiasAdd/ReadVariableOp�.model_2/FullyConnected-1/MatMul/ReadVariableOp�(model_2/Movie-Embedding/embedding_lookup�'model_2/User-Embedding/embedding_lookupj
model_2/User-Embedding/CastCastuser*

DstT0*

SrcT0*'
_output_shapes
:����������
'model_2/User-Embedding/embedding_lookupResourceGather-model_2_user_embedding_embedding_lookup_94914model_2/User-Embedding/Cast:y:0*
Tindices0*@
_class6
42loc:@model_2/User-Embedding/embedding_lookup/94914*+
_output_shapes
:���������*
dtype0�
0model_2/User-Embedding/embedding_lookup/IdentityIdentity0model_2/User-Embedding/embedding_lookup:output:0*
T0*@
_class6
42loc:@model_2/User-Embedding/embedding_lookup/94914*+
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
(model_2/Movie-Embedding/embedding_lookupResourceGather.model_2_movie_embedding_embedding_lookup_94920 model_2/Movie-Embedding/Cast:y:0*
Tindices0*A
_class7
53loc:@model_2/Movie-Embedding/embedding_lookup/94920*+
_output_shapes
:���������*
dtype0�
1model_2/Movie-Embedding/embedding_lookup/IdentityIdentity1model_2/Movie-Embedding/embedding_lookup:output:0*
T0*A
_class7
53loc:@model_2/Movie-Embedding/embedding_lookup/94920*+
_output_shapes
:����������
3model_2/Movie-Embedding/embedding_lookup/Identity_1Identity:model_2/Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������l
model_2/FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_2/FlattenMovies/ReshapeReshape<model_2/Movie-Embedding/embedding_lookup/Identity_1:output:0$model_2/FlattenMovies/Const:output:0*
T0*'
_output_shapes
:���������k
model_2/FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_2/FlattenUsers/ReshapeReshape;model_2/User-Embedding/embedding_lookup/Identity_1:output:0#model_2/FlattenUsers/Const:output:0*
T0*'
_output_shapes
:���������\
model_2/Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_2/Concat/concatConcatV2&model_2/FlattenMovies/Reshape:output:0%model_2/FlattenUsers/Reshape:output:0#model_2/Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������
�
.model_2/FullyConnected-1/MatMul/ReadVariableOpReadVariableOp7model_2_fullyconnected_1_matmul_readvariableop_resource*
_output_shapes

:
2*
dtype0�
model_2/FullyConnected-1/MatMulMatMulmodel_2/Concat/concat:output:06model_2/FullyConnected-1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/model_2/FullyConnected-1/BiasAdd/ReadVariableOpReadVariableOp8model_2_fullyconnected_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
 model_2/FullyConnected-1/BiasAddBiasAdd)model_2/FullyConnected-1/MatMul:product:07model_2/FullyConnected-1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
model_2/FullyConnected-1/ReluRelu)model_2/FullyConnected-1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
(model_2/Activation/MatMul/ReadVariableOpReadVariableOp1model_2_activation_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
model_2/Activation/MatMulMatMul+model_2/FullyConnected-1/Relu:activations:00model_2/Activation/MatMul/ReadVariableOp:value:0*
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
 *  �?�
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
�

�
E__inference_Activation_layer_call_and_return_conditional_losses_95044

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
�
_
C__inference_lambda_2_layer_call_and_return_conditional_losses_95594

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
_
C__inference_lambda_2_layer_call_and_return_conditional_losses_95586

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
�
�
.__inference_User-Embedding_layer_call_fn_95483

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
GPU 2J 8� *R
fMRK
I__inference_User-Embedding_layer_call_and_return_conditional_losses_94969s
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
D
(__inference_lambda_2_layer_call_fn_95573

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
GPU 2J 8� *L
fGRE
C__inference_lambda_2_layer_call_and_return_conditional_losses_95058`
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
I__inference_User-Embedding_layer_call_and_return_conditional_losses_95493

inputs)
embedding_lookup_95487:	�
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_95487Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/95487*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/95487*+
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
lambda_20
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
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
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
6
_init_input_shape"
_tf_keras_input_layer
6
_init_input_shape"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#
embeddings"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias"
_tf_keras_layer
�
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses"
_tf_keras_layer
J
0
#1
<2
=3
D4
E5"
trackable_list_wrapper
J
0
#1
<2
=3
D4
E5"
trackable_list_wrapper
'
L0"
trackable_list_wrapper
�
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Rtrace_0
Strace_1
Ttrace_2
Utrace_32�
'__inference_model_2_layer_call_fn_95080
'__inference_model_2_layer_call_fn_95347
'__inference_model_2_layer_call_fn_95365
'__inference_model_2_layer_call_fn_95237�
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
 zRtrace_0zStrace_1zTtrace_2zUtrace_3
�
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32�
B__inference_model_2_layer_call_and_return_conditional_losses_95410
B__inference_model_2_layer_call_and_return_conditional_losses_95455
B__inference_model_2_layer_call_and_return_conditional_losses_95266
B__inference_model_2_layer_call_and_return_conditional_losses_95295�
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
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
�B�
 __inference__wrapped_model_94950UserItem"�
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
Ziter

[beta_1

\beta_2
	]decay
^learning_ratem�#m�<m�=m�Dm�Em�v�#v�<v�=v�Dv�Ev�"
	optimizer
,
_serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
L0"
trackable_list_wrapper
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
etrace_02�
/__inference_Movie-Embedding_layer_call_fn_95462�
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
 zetrace_0
�
ftrace_02�
J__inference_Movie-Embedding_layer_call_and_return_conditional_losses_95476�
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
 zftrace_0
-:+	�2Movie-Embedding/embeddings
'
#0"
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
ltrace_02�
.__inference_User-Embedding_layer_call_fn_95483�
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
 zltrace_0
�
mtrace_02�
I__inference_User-Embedding_layer_call_and_return_conditional_losses_95493�
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
 zmtrace_0
,:*	�2User-Embedding/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
strace_02�
-__inference_FlattenMovies_layer_call_fn_95498�
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
 zstrace_0
�
ttrace_02�
H__inference_FlattenMovies_layer_call_and_return_conditional_losses_95504�
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
 zttrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
ztrace_02�
,__inference_FlattenUsers_layer_call_fn_95509�
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
 zztrace_0
�
{trace_02�
G__inference_FlattenUsers_layer_call_and_return_conditional_losses_95515�
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
 z{trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_Concat_layer_call_fn_95521�
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
A__inference_Concat_layer_call_and_return_conditional_losses_95528�
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
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_FullyConnected-1_layer_call_fn_95537�
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
K__inference_FullyConnected-1_layer_call_and_return_conditional_losses_95548�
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
):'
22FullyConnected-1/kernel
#:!22FullyConnected-1/bias
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_Activation_layer_call_fn_95557�
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
E__inference_Activation_layer_call_and_return_conditional_losses_95568�
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
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_lambda_2_layer_call_fn_95573
(__inference_lambda_2_layer_call_fn_95578�
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
C__inference_lambda_2_layer_call_and_return_conditional_losses_95586
C__inference_lambda_2_layer_call_and_return_conditional_losses_95594�
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
__inference_loss_fn_0_95603�
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
f
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
9"
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
'__inference_model_2_layer_call_fn_95080UserItem"�
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
'__inference_model_2_layer_call_fn_95347inputs_0inputs_1"�
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
'__inference_model_2_layer_call_fn_95365inputs_0inputs_1"�
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
'__inference_model_2_layer_call_fn_95237UserItem"�
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
B__inference_model_2_layer_call_and_return_conditional_losses_95410inputs_0inputs_1"�
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
B__inference_model_2_layer_call_and_return_conditional_losses_95455inputs_0inputs_1"�
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
B__inference_model_2_layer_call_and_return_conditional_losses_95266UserItem"�
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
B__inference_model_2_layer_call_and_return_conditional_losses_95295UserItem"�
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
#__inference_signature_wrapper_95325ItemUser"�
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
L0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_Movie-Embedding_layer_call_fn_95462inputs"�
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
J__inference_Movie-Embedding_layer_call_and_return_conditional_losses_95476inputs"�
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
.__inference_User-Embedding_layer_call_fn_95483inputs"�
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
I__inference_User-Embedding_layer_call_and_return_conditional_losses_95493inputs"�
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
-__inference_FlattenMovies_layer_call_fn_95498inputs"�
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
H__inference_FlattenMovies_layer_call_and_return_conditional_losses_95504inputs"�
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
,__inference_FlattenUsers_layer_call_fn_95509inputs"�
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
G__inference_FlattenUsers_layer_call_and_return_conditional_losses_95515inputs"�
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
&__inference_Concat_layer_call_fn_95521inputs_0inputs_1"�
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
A__inference_Concat_layer_call_and_return_conditional_losses_95528inputs_0inputs_1"�
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
0__inference_FullyConnected-1_layer_call_fn_95537inputs"�
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
K__inference_FullyConnected-1_layer_call_and_return_conditional_losses_95548inputs"�
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
*__inference_Activation_layer_call_fn_95557inputs"�
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
E__inference_Activation_layer_call_and_return_conditional_losses_95568inputs"�
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
(__inference_lambda_2_layer_call_fn_95573inputs"�
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
(__inference_lambda_2_layer_call_fn_95578inputs"�
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
C__inference_lambda_2_layer_call_and_return_conditional_losses_95586inputs"�
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
C__inference_lambda_2_layer_call_and_return_conditional_losses_95594inputs"�
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
__inference_loss_fn_0_95603"�
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
2:0	�2!Adam/Movie-Embedding/embeddings/m
1:/	�2 Adam/User-Embedding/embeddings/m
.:,
22Adam/FullyConnected-1/kernel/m
(:&22Adam/FullyConnected-1/bias/m
(:&22Adam/Activation/kernel/m
": 2Adam/Activation/bias/m
2:0	�2!Adam/Movie-Embedding/embeddings/v
1:/	�2 Adam/User-Embedding/embeddings/v
.:,
22Adam/FullyConnected-1/kernel/v
(:&22Adam/FullyConnected-1/bias/v
(:&22Adam/Activation/kernel/v
": 2Adam/Activation/bias/v�
E__inference_Activation_layer_call_and_return_conditional_losses_95568cDE/�,
%�"
 �
inputs���������2
� ",�)
"�
tensor_0���������
� �
*__inference_Activation_layer_call_fn_95557XDE/�,
%�"
 �
inputs���������2
� "!�
unknown����������
A__inference_Concat_layer_call_and_return_conditional_losses_95528�Z�W
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
&__inference_Concat_layer_call_fn_95521Z�W
P�M
K�H
"�
inputs_0���������
"�
inputs_1���������
� "!�
unknown���������
�
H__inference_FlattenMovies_layer_call_and_return_conditional_losses_95504c3�0
)�&
$�!
inputs���������
� ",�)
"�
tensor_0���������
� �
-__inference_FlattenMovies_layer_call_fn_95498X3�0
)�&
$�!
inputs���������
� "!�
unknown����������
G__inference_FlattenUsers_layer_call_and_return_conditional_losses_95515c3�0
)�&
$�!
inputs���������
� ",�)
"�
tensor_0���������
� �
,__inference_FlattenUsers_layer_call_fn_95509X3�0
)�&
$�!
inputs���������
� "!�
unknown����������
K__inference_FullyConnected-1_layer_call_and_return_conditional_losses_95548c<=/�,
%�"
 �
inputs���������

� ",�)
"�
tensor_0���������2
� �
0__inference_FullyConnected-1_layer_call_fn_95537X<=/�,
%�"
 �
inputs���������

� "!�
unknown���������2�
J__inference_Movie-Embedding_layer_call_and_return_conditional_losses_95476f/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������
� �
/__inference_Movie-Embedding_layer_call_fn_95462[/�,
%�"
 �
inputs���������
� "%�"
unknown����������
I__inference_User-Embedding_layer_call_and_return_conditional_losses_95493f#/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������
� �
.__inference_User-Embedding_layer_call_fn_95483[#/�,
%�"
 �
inputs���������
� "%�"
unknown����������
 __inference__wrapped_model_94950�#<=DER�O
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
C__inference_lambda_2_layer_call_and_return_conditional_losses_95586g7�4
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
C__inference_lambda_2_layer_call_and_return_conditional_losses_95594g7�4
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
(__inference_lambda_2_layer_call_fn_95573\7�4
-�*
 �
inputs���������

 
p 
� "!�
unknown����������
(__inference_lambda_2_layer_call_fn_95578\7�4
-�*
 �
inputs���������

 
p
� "!�
unknown���������C
__inference_loss_fn_0_95603$�

� 
� "�
unknown �
B__inference_model_2_layer_call_and_return_conditional_losses_95266�#<=DEZ�W
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
B__inference_model_2_layer_call_and_return_conditional_losses_95295�#<=DEZ�W
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
B__inference_model_2_layer_call_and_return_conditional_losses_95410�#<=DEb�_
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
B__inference_model_2_layer_call_and_return_conditional_losses_95455�#<=DEb�_
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
'__inference_model_2_layer_call_fn_95080�#<=DEZ�W
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
'__inference_model_2_layer_call_fn_95237�#<=DEZ�W
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
'__inference_model_2_layer_call_fn_95347�#<=DEb�_
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
'__inference_model_2_layer_call_fn_95365�#<=DEb�_
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
#__inference_signature_wrapper_95325�#<=DE]�Z
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