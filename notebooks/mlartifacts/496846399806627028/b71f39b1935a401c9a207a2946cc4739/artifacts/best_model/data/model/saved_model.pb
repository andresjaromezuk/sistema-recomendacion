╔Ѓ	
┘╝
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
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
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
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
Ц
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	ѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
┴
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
executor_typestring ѕе
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.11.02unknown8╣Ў
ё
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
ї
Adam/Activation/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*)
shared_nameAdam/Activation/kernel/v
Ё
,Adam/Activation/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Activation/kernel/v*
_output_shapes

:2*
dtype0
љ
Adam/FullyConnected-1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*-
shared_nameAdam/FullyConnected-1/bias/v
Ѕ
0Adam/FullyConnected-1/bias/v/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/bias/v*
_output_shapes
:2*
dtype0
ў
Adam/FullyConnected-1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
2*/
shared_name Adam/FullyConnected-1/kernel/v
Љ
2Adam/FullyConnected-1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/kernel/v*
_output_shapes

:
2*
dtype0
ъ
 Adam/User-Embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
шА*1
shared_name" Adam/User-Embedding/embeddings/v
Ќ
4Adam/User-Embedding/embeddings/v/Read/ReadVariableOpReadVariableOp Adam/User-Embedding/embeddings/v* 
_output_shapes
:
шА*
dtype0
а
!Adam/Movie-Embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЛЊ*2
shared_name#!Adam/Movie-Embedding/embeddings/v
Ў
5Adam/Movie-Embedding/embeddings/v/Read/ReadVariableOpReadVariableOp!Adam/Movie-Embedding/embeddings/v* 
_output_shapes
:
ЛЊ*
dtype0
ё
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
ї
Adam/Activation/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*)
shared_nameAdam/Activation/kernel/m
Ё
,Adam/Activation/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Activation/kernel/m*
_output_shapes

:2*
dtype0
љ
Adam/FullyConnected-1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*-
shared_nameAdam/FullyConnected-1/bias/m
Ѕ
0Adam/FullyConnected-1/bias/m/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/bias/m*
_output_shapes
:2*
dtype0
ў
Adam/FullyConnected-1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
2*/
shared_name Adam/FullyConnected-1/kernel/m
Љ
2Adam/FullyConnected-1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/kernel/m*
_output_shapes

:
2*
dtype0
ъ
 Adam/User-Embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
шА*1
shared_name" Adam/User-Embedding/embeddings/m
Ќ
4Adam/User-Embedding/embeddings/m/Read/ReadVariableOpReadVariableOp Adam/User-Embedding/embeddings/m* 
_output_shapes
:
шА*
dtype0
а
!Adam/Movie-Embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЛЊ*2
shared_name#!Adam/Movie-Embedding/embeddings/m
Ў
5Adam/Movie-Embedding/embeddings/m/Read/ReadVariableOpReadVariableOp!Adam/Movie-Embedding/embeddings/m* 
_output_shapes
:
ЛЊ*
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
ѓ
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
і
FullyConnected-1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
2*(
shared_nameFullyConnected-1/kernel
Ѓ
+FullyConnected-1/kernel/Read/ReadVariableOpReadVariableOpFullyConnected-1/kernel*
_output_shapes

:
2*
dtype0
љ
User-Embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
шА**
shared_nameUser-Embedding/embeddings
Ѕ
-User-Embedding/embeddings/Read/ReadVariableOpReadVariableOpUser-Embedding/embeddings* 
_output_shapes
:
шА*
dtype0
њ
Movie-Embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЛЊ*+
shared_nameMovie-Embedding/embeddings
І
.Movie-Embedding/embeddings/Read/ReadVariableOpReadVariableOpMovie-Embedding/embeddings* 
_output_shapes
:
ЛЊ*
dtype0
w
serving_default_ItemPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
w
serving_default_UserPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
я
StatefulPartitionedCallStatefulPartitionedCallserving_default_Itemserving_default_UserUser-Embedding/embeddingsMovie-Embedding/embeddingsFullyConnected-1/kernelFullyConnected-1/biasActivation/kernelActivation/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *.
f)R'
%__inference_signature_wrapper_8803047

NoOpNoOp
╠F
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЄF
value§EBЩE BзE
Х
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
а
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
а
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#
embeddings*
ј
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
ј
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
ј
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
д
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias*
д
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias*
ј
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
░
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
╝
Ziter

[beta_1

\beta_2
	]decay
^learning_ratemд#mД<mе=mЕDmфEmФvг#vГ<v«=v»Dv░Ev▒*

_serving_default* 
* 
* 

0*

0*
	
L0* 
Њ
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
Њ
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
Љ
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
Љ
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
њ
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
ђlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

Ђtrace_0* 

ѓtrace_0* 

<0
=1*

<0
=1*
* 
ў
Ѓnon_trainable_variables
ёlayers
Ёmetrics
 єlayer_regularization_losses
Єlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

ѕtrace_0* 

Ѕtrace_0* 
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
ў
іnon_trainable_variables
Іlayers
їmetrics
 Їlayer_regularization_losses
јlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

Јtrace_0* 

љtrace_0* 
a[
VARIABLE_VALUEActivation/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEActivation/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
Љnon_trainable_variables
њlayers
Њmetrics
 ћlayer_regularization_losses
Ћlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 

ќtrace_0
Ќtrace_1* 

ўtrace_0
Ўtrace_1* 

џtrace_0* 
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
Џ0
ю1*
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
Ю	variables
ъ	keras_api

Ъtotal

аcount*
M
А	variables
б	keras_api

Бtotal

цcount
Ц
_fn_kwargs*

Ъ0
а1*

Ю	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Б0
ц1*

А	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
њІ
VARIABLE_VALUE!Adam/Movie-Embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Љі
VARIABLE_VALUE Adam/User-Embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Іё
VARIABLE_VALUEAdam/FullyConnected-1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Єђ
VARIABLE_VALUEAdam/FullyConnected-1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/Activation/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/Activation/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
њІ
VARIABLE_VALUE!Adam/Movie-Embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Љі
VARIABLE_VALUE Adam/User-Embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Іё
VARIABLE_VALUEAdam/FullyConnected-1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Єђ
VARIABLE_VALUEAdam/FullyConnected-1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/Activation/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/Activation/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Г
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
GPU 2J 8ѓ *)
f$R"
 __inference__traced_save_8803430
ї
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
GPU 2J 8ѓ *,
f'R%
#__inference__traced_restore_8803521мЃ
ц

■
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8803270

inputs0
matmul_readvariableop_resource:
2-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
┬*
└
B__inference_model_layer_call_and_return_conditional_losses_8802988
user
item*
user_embedding_8802963:
шА+
movie_embedding_8802966:
ЛЊ*
fullyconnected_1_8802972:
2&
fullyconnected_1_8802974:2$
activation_8802977:2 
activation_8802979:
identityѕб"Activation/StatefulPartitionedCallб(FullyConnected-1/StatefulPartitionedCallб'Movie-Embedding/StatefulPartitionedCallб<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpб&User-Embedding/StatefulPartitionedCallз
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_8802963*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8802691Ш
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallitemmovie_embedding_8802966*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8802709ь
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8802719Ж
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8802727§
Concat/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_8802736г
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0fullyconnected_1_8802972fullyconnected_1_8802974*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8802749д
"Activation/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0activation_8802977activation_8802979*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_8802766┌
lambda/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_8802780ќ
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_8802966* 
_output_shapes
:
ЛЊ*
dtype0ъ
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;┴
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: n
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         е
NoOpNoOp#^Activation/StatefulPartitionedCall)^FullyConnected-1/StatefulPartitionedCall(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:         :         : : : : : : 2H
"Activation/StatefulPartitionedCall"Activation/StatefulPartitionedCall2T
(FullyConnected-1/StatefulPartitionedCall(FullyConnected-1/StatefulPartitionedCall2R
'Movie-Embedding/StatefulPartitionedCall'Movie-Embedding/StatefulPartitionedCall2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&User-Embedding/StatefulPartitionedCall&User-Embedding/StatefulPartitionedCall:M I
'
_output_shapes
:         

_user_specified_nameUser:MI
'
_output_shapes
:         

_user_specified_nameItem
Г	
Ф
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8802691

inputs,
embedding_lookup_8802685:
шА
identityѕбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         й
embedding_lookupResourceGatherembedding_lookup_8802685Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/8802685*+
_output_shapes
:         *
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/8802685*+
_output_shapes
:         Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┤
m
C__inference_Concat_layer_call_and_return_conditional_losses_8802736

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
:         
W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
╗
_
C__inference_lambda_layer_call_and_return_conditional_losses_8802780

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  љ@T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:         J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
addAddV2mul:z:0add/y:output:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┬*
└
B__inference_model_layer_call_and_return_conditional_losses_8803017
user
item*
user_embedding_8802992:
шА+
movie_embedding_8802995:
ЛЊ*
fullyconnected_1_8803001:
2&
fullyconnected_1_8803003:2$
activation_8803006:2 
activation_8803008:
identityѕб"Activation/StatefulPartitionedCallб(FullyConnected-1/StatefulPartitionedCallб'Movie-Embedding/StatefulPartitionedCallб<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpб&User-Embedding/StatefulPartitionedCallз
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_8802992*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8802691Ш
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallitemmovie_embedding_8802995*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8802709ь
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8802719Ж
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8802727§
Concat/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_8802736г
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0fullyconnected_1_8803001fullyconnected_1_8803003*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8802749д
"Activation/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0activation_8803006activation_8803008*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_8802766┌
lambda/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_8802818ќ
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_8802995* 
_output_shapes
:
ЛЊ*
dtype0ъ
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;┴
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: n
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         е
NoOpNoOp#^Activation/StatefulPartitionedCall)^FullyConnected-1/StatefulPartitionedCall(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:         :         : : : : : : 2H
"Activation/StatefulPartitionedCall"Activation/StatefulPartitionedCall2T
(FullyConnected-1/StatefulPartitionedCall(FullyConnected-1/StatefulPartitionedCall2R
'Movie-Embedding/StatefulPartitionedCall'Movie-Embedding/StatefulPartitionedCall2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&User-Embedding/StatefulPartitionedCall&User-Embedding/StatefulPartitionedCall:M I
'
_output_shapes
:         

_user_specified_nameUser:MI
'
_output_shapes
:         

_user_specified_nameItem
└

╩
__inference_loss_fn_0_8803325Y
Emovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource:
ЛЊ
identityѕб<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp─
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpEmovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource* 
_output_shapes
:
ЛЊ*
dtype0ъ
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;┴
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: l
IdentityIdentity.Movie-Embedding/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: Ё
NoOpNoOp=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp
н
Ъ
2__inference_FullyConnected-1_layer_call_fn_8803259

inputs
unknown:
2
	unknown_0:2
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8802749o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
┴
e
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8802727

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╚
Ў
,__inference_Activation_layer_call_fn_8803279

inputs
unknown:2
	unknown_0:
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_8802766o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
Ю

Э
G__inference_Activation_layer_call_and_return_conditional_losses_8803290

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
Н5
ё
B__inference_model_layer_call_and_return_conditional_losses_8803132
inputs_0
inputs_1;
'user_embedding_embedding_lookup_8803092:
шА<
(movie_embedding_embedding_lookup_8803098:
ЛЊA
/fullyconnected_1_matmul_readvariableop_resource:
2>
0fullyconnected_1_biasadd_readvariableop_resource:2;
)activation_matmul_readvariableop_resource:28
*activation_biasadd_readvariableop_resource:
identityѕб!Activation/BiasAdd/ReadVariableOpб Activation/MatMul/ReadVariableOpб'FullyConnected-1/BiasAdd/ReadVariableOpб&FullyConnected-1/MatMul/ReadVariableOpб Movie-Embedding/embedding_lookupб<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpбUser-Embedding/embedding_lookupf
User-Embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:         щ
User-Embedding/embedding_lookupResourceGather'user_embedding_embedding_lookup_8803092User-Embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@User-Embedding/embedding_lookup/8803092*+
_output_shapes
:         *
dtype0л
(User-Embedding/embedding_lookup/IdentityIdentity(User-Embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@User-Embedding/embedding_lookup/8803092*+
_output_shapes
:         Ъ
*User-Embedding/embedding_lookup/Identity_1Identity1User-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         g
Movie-Embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:         §
 Movie-Embedding/embedding_lookupResourceGather(movie_embedding_embedding_lookup_8803098Movie-Embedding/Cast:y:0*
Tindices0*;
_class1
/-loc:@Movie-Embedding/embedding_lookup/8803098*+
_output_shapes
:         *
dtype0М
)Movie-Embedding/embedding_lookup/IdentityIdentity)Movie-Embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Movie-Embedding/embedding_lookup/8803098*+
_output_shapes
:         А
+Movie-Embedding/embedding_lookup/Identity_1Identity2Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         d
FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"       д
FlattenMovies/ReshapeReshape4Movie-Embedding/embedding_lookup/Identity_1:output:0FlattenMovies/Const:output:0*
T0*'
_output_shapes
:         c
FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Б
FlattenUsers/ReshapeReshape3User-Embedding/embedding_lookup/Identity_1:output:0FlattenUsers/Const:output:0*
T0*'
_output_shapes
:         T
Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :░
Concat/concatConcatV2FlattenMovies/Reshape:output:0FlattenUsers/Reshape:output:0Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:         
ќ
&FullyConnected-1/MatMul/ReadVariableOpReadVariableOp/fullyconnected_1_matmul_readvariableop_resource*
_output_shapes

:
2*
dtype0Џ
FullyConnected-1/MatMulMatMulConcat/concat:output:0.FullyConnected-1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2ћ
'FullyConnected-1/BiasAdd/ReadVariableOpReadVariableOp0fullyconnected_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Е
FullyConnected-1/BiasAddBiasAdd!FullyConnected-1/MatMul:product:0/FullyConnected-1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
FullyConnected-1/ReluRelu!FullyConnected-1/BiasAdd:output:0*
T0*'
_output_shapes
:         2і
 Activation/MatMul/ReadVariableOpReadVariableOp)activation_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ю
Activation/MatMulMatMul#FullyConnected-1/Relu:activations:0(Activation/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѕ
!Activation/BiasAdd/ReadVariableOpReadVariableOp*activation_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
Activation/BiasAddBiasAddActivation/MatMul:product:0)Activation/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         l
Activation/SigmoidSigmoidActivation/BiasAdd:output:0*
T0*'
_output_shapes
:         Q
lambda/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  љ@r

lambda/mulMullambda/mul/x:output:0Activation/Sigmoid:y:0*
T0*'
_output_shapes
:         Q
lambda/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l

lambda/addAddV2lambda/mul:z:0lambda/add/y:output:0*
T0*'
_output_shapes
:         Д
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp(movie_embedding_embedding_lookup_8803098* 
_output_shapes
:
ЛЊ*
dtype0ъ
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;┴
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: ]
IdentityIdentitylambda/add:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp"^Activation/BiasAdd/ReadVariableOp!^Activation/MatMul/ReadVariableOp(^FullyConnected-1/BiasAdd/ReadVariableOp'^FullyConnected-1/MatMul/ReadVariableOp!^Movie-Embedding/embedding_lookup=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp ^User-Embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:         :         : : : : : : 2F
!Activation/BiasAdd/ReadVariableOp!Activation/BiasAdd/ReadVariableOp2D
 Activation/MatMul/ReadVariableOp Activation/MatMul/ReadVariableOp2R
'FullyConnected-1/BiasAdd/ReadVariableOp'FullyConnected-1/BiasAdd/ReadVariableOp2P
&FullyConnected-1/MatMul/ReadVariableOp&FullyConnected-1/MatMul/ReadVariableOp2D
 Movie-Embedding/embedding_lookup Movie-Embedding/embedding_lookup2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2B
User-Embedding/embedding_lookupUser-Embedding/embedding_lookup:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1
а
T
(__inference_Concat_layer_call_fn_8803243
inputs_0
inputs_1
identity╗
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_8802736`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1
»
J
.__inference_FlattenUsers_layer_call_fn_8803231

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8802727`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
м*
к
B__inference_model_layer_call_and_return_conditional_losses_8802787

inputs
inputs_1*
user_embedding_8802692:
шА+
movie_embedding_8802710:
ЛЊ*
fullyconnected_1_8802750:
2&
fullyconnected_1_8802752:2$
activation_8802767:2 
activation_8802769:
identityѕб"Activation/StatefulPartitionedCallб(FullyConnected-1/StatefulPartitionedCallб'Movie-Embedding/StatefulPartitionedCallб<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpб&User-Embedding/StatefulPartitionedCallш
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_8802692*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8802691Щ
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_8802710*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8802709ь
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8802719Ж
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8802727§
Concat/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_8802736г
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0fullyconnected_1_8802750fullyconnected_1_8802752*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8802749д
"Activation/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0activation_8802767activation_8802769*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_8802766┌
lambda/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_8802780ќ
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_8802710* 
_output_shapes
:
ЛЊ*
dtype0ъ
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;┴
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: n
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         е
NoOpNoOp#^Activation/StatefulPartitionedCall)^FullyConnected-1/StatefulPartitionedCall(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:         :         : : : : : : 2H
"Activation/StatefulPartitionedCall"Activation/StatefulPartitionedCall2T
(FullyConnected-1/StatefulPartitionedCall(FullyConnected-1/StatefulPartitionedCall2R
'Movie-Embedding/StatefulPartitionedCall'Movie-Embedding/StatefulPartitionedCall2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&User-Embedding/StatefulPartitionedCall&User-Embedding/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
▒
K
/__inference_FlattenMovies_layer_call_fn_8803220

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8802719`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ц

■
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8802749

inputs0
matmul_readvariableop_resource:
2-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
┬
f
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8803226

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Г	
Ф
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8803215

inputs,
embedding_lookup_8803209:
шА
identityѕбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         й
embedding_lookupResourceGatherembedding_lookup_8803209Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/8803209*+
_output_shapes
:         *
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/8803209*+
_output_shapes
:         Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ю
в
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8802709

inputs,
embedding_lookup_8802699:
ЛЊ
identityѕб<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         й
embedding_lookupResourceGatherembedding_lookup_8802699Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/8802699*+
_output_shapes
:         *
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/8802699*+
_output_shapes
:         Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         Ќ
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_8802699* 
_output_shapes
:
ЛЊ*
dtype0ъ
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;┴
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         ў
NoOpNoOp=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┤
Є
1__inference_Movie-Embedding_layer_call_fn_8803184

inputs
unknown:
ЛЊ
identityѕбStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8802709s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┴
e
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8803237

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╗
_
C__inference_lambda_layer_call_and_return_conditional_losses_8802818

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  љ@T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:         J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
addAddV2mul:z:0add/y:output:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
з	
ў
'__inference_model_layer_call_fn_8803087
inputs_0
inputs_1
unknown:
шА
	unknown_0:
ЛЊ
	unknown_1:
2
	unknown_2:2
	unknown_3:2
	unknown_4:
identityѕбStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_8802926o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:         :         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1
Я2
т
"__inference__wrapped_model_8802672
user
itemA
-model_user_embedding_embedding_lookup_8802636:
шАB
.model_movie_embedding_embedding_lookup_8802642:
ЛЊG
5model_fullyconnected_1_matmul_readvariableop_resource:
2D
6model_fullyconnected_1_biasadd_readvariableop_resource:2A
/model_activation_matmul_readvariableop_resource:2>
0model_activation_biasadd_readvariableop_resource:
identityѕб'model/Activation/BiasAdd/ReadVariableOpб&model/Activation/MatMul/ReadVariableOpб-model/FullyConnected-1/BiasAdd/ReadVariableOpб,model/FullyConnected-1/MatMul/ReadVariableOpб&model/Movie-Embedding/embedding_lookupб%model/User-Embedding/embedding_lookuph
model/User-Embedding/CastCastuser*

DstT0*

SrcT0*'
_output_shapes
:         Љ
%model/User-Embedding/embedding_lookupResourceGather-model_user_embedding_embedding_lookup_8802636model/User-Embedding/Cast:y:0*
Tindices0*@
_class6
42loc:@model/User-Embedding/embedding_lookup/8802636*+
_output_shapes
:         *
dtype0Р
.model/User-Embedding/embedding_lookup/IdentityIdentity.model/User-Embedding/embedding_lookup:output:0*
T0*@
_class6
42loc:@model/User-Embedding/embedding_lookup/8802636*+
_output_shapes
:         Ф
0model/User-Embedding/embedding_lookup/Identity_1Identity7model/User-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         i
model/Movie-Embedding/CastCastitem*

DstT0*

SrcT0*'
_output_shapes
:         Ћ
&model/Movie-Embedding/embedding_lookupResourceGather.model_movie_embedding_embedding_lookup_8802642model/Movie-Embedding/Cast:y:0*
Tindices0*A
_class7
53loc:@model/Movie-Embedding/embedding_lookup/8802642*+
_output_shapes
:         *
dtype0т
/model/Movie-Embedding/embedding_lookup/IdentityIdentity/model/Movie-Embedding/embedding_lookup:output:0*
T0*A
_class7
53loc:@model/Movie-Embedding/embedding_lookup/8802642*+
_output_shapes
:         Г
1model/Movie-Embedding/embedding_lookup/Identity_1Identity8model/Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         j
model/FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"       И
model/FlattenMovies/ReshapeReshape:model/Movie-Embedding/embedding_lookup/Identity_1:output:0"model/FlattenMovies/Const:output:0*
T0*'
_output_shapes
:         i
model/FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"       х
model/FlattenUsers/ReshapeReshape9model/User-Embedding/embedding_lookup/Identity_1:output:0!model/FlattenUsers/Const:output:0*
T0*'
_output_shapes
:         Z
model/Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╚
model/Concat/concatConcatV2$model/FlattenMovies/Reshape:output:0#model/FlattenUsers/Reshape:output:0!model/Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:         
б
,model/FullyConnected-1/MatMul/ReadVariableOpReadVariableOp5model_fullyconnected_1_matmul_readvariableop_resource*
_output_shapes

:
2*
dtype0Г
model/FullyConnected-1/MatMulMatMulmodel/Concat/concat:output:04model/FullyConnected-1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2а
-model/FullyConnected-1/BiasAdd/ReadVariableOpReadVariableOp6model_fullyconnected_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0╗
model/FullyConnected-1/BiasAddBiasAdd'model/FullyConnected-1/MatMul:product:05model/FullyConnected-1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2~
model/FullyConnected-1/ReluRelu'model/FullyConnected-1/BiasAdd:output:0*
T0*'
_output_shapes
:         2ќ
&model/Activation/MatMul/ReadVariableOpReadVariableOp/model_activation_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0«
model/Activation/MatMulMatMul)model/FullyConnected-1/Relu:activations:0.model/Activation/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ћ
'model/Activation/BiasAdd/ReadVariableOpReadVariableOp0model_activation_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
model/Activation/BiasAddBiasAdd!model/Activation/MatMul:product:0/model/Activation/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
model/Activation/SigmoidSigmoid!model/Activation/BiasAdd:output:0*
T0*'
_output_shapes
:         W
model/lambda/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  љ@ё
model/lambda/mulMulmodel/lambda/mul/x:output:0model/Activation/Sigmoid:y:0*
T0*'
_output_shapes
:         W
model/lambda/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
model/lambda/addAddV2model/lambda/mul:z:0model/lambda/add/y:output:0*
T0*'
_output_shapes
:         c
IdentityIdentitymodel/lambda/add:z:0^NoOp*
T0*'
_output_shapes
:         ╔
NoOpNoOp(^model/Activation/BiasAdd/ReadVariableOp'^model/Activation/MatMul/ReadVariableOp.^model/FullyConnected-1/BiasAdd/ReadVariableOp-^model/FullyConnected-1/MatMul/ReadVariableOp'^model/Movie-Embedding/embedding_lookup&^model/User-Embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:         :         : : : : : : 2R
'model/Activation/BiasAdd/ReadVariableOp'model/Activation/BiasAdd/ReadVariableOp2P
&model/Activation/MatMul/ReadVariableOp&model/Activation/MatMul/ReadVariableOp2^
-model/FullyConnected-1/BiasAdd/ReadVariableOp-model/FullyConnected-1/BiasAdd/ReadVariableOp2\
,model/FullyConnected-1/MatMul/ReadVariableOp,model/FullyConnected-1/MatMul/ReadVariableOp2P
&model/Movie-Embedding/embedding_lookup&model/Movie-Embedding/embedding_lookup2N
%model/User-Embedding/embedding_lookup%model/User-Embedding/embedding_lookup:M I
'
_output_shapes
:         

_user_specified_nameUser:MI
'
_output_shapes
:         

_user_specified_nameItem
Џ
D
(__inference_lambda_layer_call_fn_8803300

inputs
identity«
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_8802818`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╣	
ј
%__inference_signature_wrapper_8803047
item
user
unknown:
шА
	unknown_0:
ЛЊ
	unknown_1:
2
	unknown_2:2
	unknown_3:2
	unknown_4:
identityѕбStatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCalluseritemunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference__wrapped_model_8802672o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:         :         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:         

_user_specified_nameItem:MI
'
_output_shapes
:         

_user_specified_nameUser
╗
_
C__inference_lambda_layer_call_and_return_conditional_losses_8803316

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  љ@T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:         J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
addAddV2mul:z:0add/y:output:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ч>
ї
 __inference__traced_save_8803430
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

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Њ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╝
value▓B»B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЦ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B д
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:05savev2_movie_embedding_embeddings_read_readvariableop4savev2_user_embedding_embeddings_read_readvariableop2savev2_fullyconnected_1_kernel_read_readvariableop0savev2_fullyconnected_1_bias_read_readvariableop,savev2_activation_kernel_read_readvariableop*savev2_activation_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop<savev2_adam_movie_embedding_embeddings_m_read_readvariableop;savev2_adam_user_embedding_embeddings_m_read_readvariableop9savev2_adam_fullyconnected_1_kernel_m_read_readvariableop7savev2_adam_fullyconnected_1_bias_m_read_readvariableop3savev2_adam_activation_kernel_m_read_readvariableop1savev2_adam_activation_bias_m_read_readvariableop<savev2_adam_movie_embedding_embeddings_v_read_readvariableop;savev2_adam_user_embedding_embeddings_v_read_readvariableop9savev2_adam_fullyconnected_1_kernel_v_read_readvariableop7savev2_adam_fullyconnected_1_bias_v_read_readvariableop3savev2_adam_activation_kernel_v_read_readvariableop1savev2_adam_activation_bias_v_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 **
dtypes 
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
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

identity_1Identity_1:output:0*М
_input_shapes┴
Й: :
ЛЊ:
шА:
2:2:2:: : : : : : : : : :
ЛЊ:
шА:
2:2:2::
ЛЊ:
шА:
2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
ЛЊ:&"
 
_output_shapes
:
шА:$ 

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
: :&"
 
_output_shapes
:
ЛЊ:&"
 
_output_shapes
:
шА:$ 

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
::&"
 
_output_shapes
:
ЛЊ:&"
 
_output_shapes
:
шА:$ 

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
Ю
в
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8803198

inputs,
embedding_lookup_8803188:
ЛЊ
identityѕб<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         й
embedding_lookupResourceGatherembedding_lookup_8803188Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/8803188*+
_output_shapes
:         *
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/8803188*+
_output_shapes
:         Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         Ќ
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_8803188* 
_output_shapes
:
ЛЊ*
dtype0ъ
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;┴
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         ў
NoOpNoOp=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╝
o
C__inference_Concat_layer_call_and_return_conditional_losses_8803250
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
:         
W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1
█	
љ
'__inference_model_layer_call_fn_8802802
user
item
unknown:
шА
	unknown_0:
ЛЊ
	unknown_1:
2
	unknown_2:2
	unknown_3:2
	unknown_4:
identityѕбStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCalluseritemunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_8802787o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:         :         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:         

_user_specified_nameUser:MI
'
_output_shapes
:         

_user_specified_nameItem
Ю

Э
G__inference_Activation_layer_call_and_return_conditional_losses_8802766

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
Н5
ё
B__inference_model_layer_call_and_return_conditional_losses_8803177
inputs_0
inputs_1;
'user_embedding_embedding_lookup_8803137:
шА<
(movie_embedding_embedding_lookup_8803143:
ЛЊA
/fullyconnected_1_matmul_readvariableop_resource:
2>
0fullyconnected_1_biasadd_readvariableop_resource:2;
)activation_matmul_readvariableop_resource:28
*activation_biasadd_readvariableop_resource:
identityѕб!Activation/BiasAdd/ReadVariableOpб Activation/MatMul/ReadVariableOpб'FullyConnected-1/BiasAdd/ReadVariableOpб&FullyConnected-1/MatMul/ReadVariableOpб Movie-Embedding/embedding_lookupб<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpбUser-Embedding/embedding_lookupf
User-Embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:         щ
User-Embedding/embedding_lookupResourceGather'user_embedding_embedding_lookup_8803137User-Embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@User-Embedding/embedding_lookup/8803137*+
_output_shapes
:         *
dtype0л
(User-Embedding/embedding_lookup/IdentityIdentity(User-Embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@User-Embedding/embedding_lookup/8803137*+
_output_shapes
:         Ъ
*User-Embedding/embedding_lookup/Identity_1Identity1User-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         g
Movie-Embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:         §
 Movie-Embedding/embedding_lookupResourceGather(movie_embedding_embedding_lookup_8803143Movie-Embedding/Cast:y:0*
Tindices0*;
_class1
/-loc:@Movie-Embedding/embedding_lookup/8803143*+
_output_shapes
:         *
dtype0М
)Movie-Embedding/embedding_lookup/IdentityIdentity)Movie-Embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Movie-Embedding/embedding_lookup/8803143*+
_output_shapes
:         А
+Movie-Embedding/embedding_lookup/Identity_1Identity2Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         d
FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"       д
FlattenMovies/ReshapeReshape4Movie-Embedding/embedding_lookup/Identity_1:output:0FlattenMovies/Const:output:0*
T0*'
_output_shapes
:         c
FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Б
FlattenUsers/ReshapeReshape3User-Embedding/embedding_lookup/Identity_1:output:0FlattenUsers/Const:output:0*
T0*'
_output_shapes
:         T
Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :░
Concat/concatConcatV2FlattenMovies/Reshape:output:0FlattenUsers/Reshape:output:0Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:         
ќ
&FullyConnected-1/MatMul/ReadVariableOpReadVariableOp/fullyconnected_1_matmul_readvariableop_resource*
_output_shapes

:
2*
dtype0Џ
FullyConnected-1/MatMulMatMulConcat/concat:output:0.FullyConnected-1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2ћ
'FullyConnected-1/BiasAdd/ReadVariableOpReadVariableOp0fullyconnected_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Е
FullyConnected-1/BiasAddBiasAdd!FullyConnected-1/MatMul:product:0/FullyConnected-1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
FullyConnected-1/ReluRelu!FullyConnected-1/BiasAdd:output:0*
T0*'
_output_shapes
:         2і
 Activation/MatMul/ReadVariableOpReadVariableOp)activation_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ю
Activation/MatMulMatMul#FullyConnected-1/Relu:activations:0(Activation/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѕ
!Activation/BiasAdd/ReadVariableOpReadVariableOp*activation_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
Activation/BiasAddBiasAddActivation/MatMul:product:0)Activation/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         l
Activation/SigmoidSigmoidActivation/BiasAdd:output:0*
T0*'
_output_shapes
:         Q
lambda/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  љ@r

lambda/mulMullambda/mul/x:output:0Activation/Sigmoid:y:0*
T0*'
_output_shapes
:         Q
lambda/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l

lambda/addAddV2lambda/mul:z:0lambda/add/y:output:0*
T0*'
_output_shapes
:         Д
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp(movie_embedding_embedding_lookup_8803143* 
_output_shapes
:
ЛЊ*
dtype0ъ
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;┴
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: ]
IdentityIdentitylambda/add:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp"^Activation/BiasAdd/ReadVariableOp!^Activation/MatMul/ReadVariableOp(^FullyConnected-1/BiasAdd/ReadVariableOp'^FullyConnected-1/MatMul/ReadVariableOp!^Movie-Embedding/embedding_lookup=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp ^User-Embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:         :         : : : : : : 2F
!Activation/BiasAdd/ReadVariableOp!Activation/BiasAdd/ReadVariableOp2D
 Activation/MatMul/ReadVariableOp Activation/MatMul/ReadVariableOp2R
'FullyConnected-1/BiasAdd/ReadVariableOp'FullyConnected-1/BiasAdd/ReadVariableOp2P
&FullyConnected-1/MatMul/ReadVariableOp&FullyConnected-1/MatMul/ReadVariableOp2D
 Movie-Embedding/embedding_lookup Movie-Embedding/embedding_lookup2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2B
User-Embedding/embedding_lookupUser-Embedding/embedding_lookup:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1
▓
є
0__inference_User-Embedding_layer_call_fn_8803205

inputs
unknown:
шА
identityѕбStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8802691s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Џ
D
(__inference_lambda_layer_call_fn_8803295

inputs
identity«
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_8802780`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╗
_
C__inference_lambda_layer_call_and_return_conditional_losses_8803308

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  љ@T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:         J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
addAddV2mul:z:0add/y:output:0*
T0*'
_output_shapes
:         O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
█	
љ
'__inference_model_layer_call_fn_8802959
user
item
unknown:
шА
	unknown_0:
ЛЊ
	unknown_1:
2
	unknown_2:2
	unknown_3:2
	unknown_4:
identityѕбStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCalluseritemunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_8802926o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:         :         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:         

_user_specified_nameUser:MI
'
_output_shapes
:         

_user_specified_nameItem
Рw
ї
#__inference__traced_restore_8803521
file_prefix?
+assignvariableop_movie_embedding_embeddings:
ЛЊ@
,assignvariableop_1_user_embedding_embeddings:
шА<
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
assignvariableop_14_count: I
5assignvariableop_15_adam_movie_embedding_embeddings_m:
ЛЊH
4assignvariableop_16_adam_user_embedding_embeddings_m:
шАD
2assignvariableop_17_adam_fullyconnected_1_kernel_m:
2>
0assignvariableop_18_adam_fullyconnected_1_bias_m:2>
,assignvariableop_19_adam_activation_kernel_m:28
*assignvariableop_20_adam_activation_bias_m:I
5assignvariableop_21_adam_movie_embedding_embeddings_v:
ЛЊH
4assignvariableop_22_adam_user_embedding_embeddings_v:
шАD
2assignvariableop_23_adam_fullyconnected_1_kernel_v:
2>
0assignvariableop_24_adam_fullyconnected_1_bias_v:2>
,assignvariableop_25_adam_activation_kernel_v:28
*assignvariableop_26_adam_activation_bias_v:
identity_28ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9ќ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╝
value▓B»B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHе
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ф
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ё
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOpAssignVariableOp+assignvariableop_movie_embedding_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_1AssignVariableOp,assignvariableop_1_user_embedding_embeddingsIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_2AssignVariableOp*assignvariableop_2_fullyconnected_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_3AssignVariableOp(assignvariableop_3_fullyconnected_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_4AssignVariableOp$assignvariableop_4_activation_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_5AssignVariableOp"assignvariableop_5_activation_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:│
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_15AssignVariableOp5assignvariableop_15_adam_movie_embedding_embeddings_mIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_user_embedding_embeddings_mIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_17AssignVariableOp2assignvariableop_17_adam_fullyconnected_1_kernel_mIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_18AssignVariableOp0assignvariableop_18_adam_fullyconnected_1_bias_mIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_activation_kernel_mIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_activation_bias_mIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_21AssignVariableOp5assignvariableop_21_adam_movie_embedding_embeddings_vIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_user_embedding_embeddings_vIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_23AssignVariableOp2assignvariableop_23_adam_fullyconnected_1_kernel_vIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_24AssignVariableOp0assignvariableop_24_adam_fullyconnected_1_bias_vIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_activation_kernel_vIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_activation_bias_vIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 А
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: ј
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
┬
f
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8802719

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
м*
к
B__inference_model_layer_call_and_return_conditional_losses_8802926

inputs
inputs_1*
user_embedding_8802901:
шА+
movie_embedding_8802904:
ЛЊ*
fullyconnected_1_8802910:
2&
fullyconnected_1_8802912:2$
activation_8802915:2 
activation_8802917:
identityѕб"Activation/StatefulPartitionedCallб(FullyConnected-1/StatefulPartitionedCallб'Movie-Embedding/StatefulPartitionedCallб<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpб&User-Embedding/StatefulPartitionedCallш
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_8802901*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8802691Щ
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_8802904*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8802709ь
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8802719Ж
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8802727§
Concat/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_8802736г
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0fullyconnected_1_8802910fullyconnected_1_8802912*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8802749д
"Activation/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0activation_8802915activation_8802917*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_8802766┌
lambda/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_8802818ќ
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_8802904* 
_output_shapes
:
ЛЊ*
dtype0ъ
-Movie-Embedding/embeddings/Regularizer/L2LossL2LossDMovie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,Movie-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;┴
*Movie-Embedding/embeddings/Regularizer/mulMul5Movie-Embedding/embeddings/Regularizer/mul/x:output:06Movie-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: n
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         е
NoOpNoOp#^Activation/StatefulPartitionedCall)^FullyConnected-1/StatefulPartitionedCall(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:         :         : : : : : : 2H
"Activation/StatefulPartitionedCall"Activation/StatefulPartitionedCall2T
(FullyConnected-1/StatefulPartitionedCall(FullyConnected-1/StatefulPartitionedCall2R
'Movie-Embedding/StatefulPartitionedCall'Movie-Embedding/StatefulPartitionedCall2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&User-Embedding/StatefulPartitionedCall&User-Embedding/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
з	
ў
'__inference_model_layer_call_fn_8803069
inputs_0
inputs_1
unknown:
шА
	unknown_0:
ЛЊ
	unknown_1:
2
	unknown_2:2
	unknown_3:2
	unknown_4:
identityѕбStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_8802787o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:         :         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1"є
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┌
serving_defaultк
5
Item-
serving_default_Item:0         
5
User-
serving_default_User:0         :
lambda0
StatefulPartitionedCall:0         tensorflow/serving/predict:ан
═
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
х
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
х
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#
embeddings"
_tf_keras_layer
Ц
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias"
_tf_keras_layer
╗
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias"
_tf_keras_layer
Ц
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
╩
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
Л
Rtrace_0
Strace_1
Ttrace_2
Utrace_32Т
'__inference_model_layer_call_fn_8802802
'__inference_model_layer_call_fn_8803069
'__inference_model_layer_call_fn_8803087
'__inference_model_layer_call_fn_8802959┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zRtrace_0zStrace_1zTtrace_2zUtrace_3
й
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32м
B__inference_model_layer_call_and_return_conditional_losses_8803132
B__inference_model_layer_call_and_return_conditional_losses_8803177
B__inference_model_layer_call_and_return_conditional_losses_8802988
B__inference_model_layer_call_and_return_conditional_losses_8803017┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
лB═
"__inference__wrapped_model_8802672UserItem"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╦
Ziter

[beta_1

\beta_2
	]decay
^learning_ratemд#mД<mе=mЕDmфEmФvг#vГ<v«=v»Dv░Ev▒"
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
Г
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
ш
etrace_02п
1__inference_Movie-Embedding_layer_call_fn_8803184б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zetrace_0
љ
ftrace_02з
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8803198б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zftrace_0
.:,
ЛЊ2Movie-Embedding/embeddings
'
#0"
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
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
З
ltrace_02О
0__inference_User-Embedding_layer_call_fn_8803205б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zltrace_0
Ј
mtrace_02Ы
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8803215б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zmtrace_0
-:+
шА2User-Embedding/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
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
з
strace_02о
/__inference_FlattenMovies_layer_call_fn_8803220б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zstrace_0
ј
ttrace_02ы
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8803226б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zttrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
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
Ы
ztrace_02Н
.__inference_FlattenUsers_layer_call_fn_8803231б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zztrace_0
Ї
{trace_02­
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8803237б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z{trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
«
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
ђlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
Ь
Ђtrace_02¤
(__inference_Concat_layer_call_fn_8803243б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЂtrace_0
Ѕ
ѓtrace_02Ж
C__inference_Concat_layer_call_and_return_conditional_losses_8803250б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zѓtrace_0
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
▓
Ѓnon_trainable_variables
ёlayers
Ёmetrics
 єlayer_regularization_losses
Єlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
Э
ѕtrace_02┘
2__inference_FullyConnected-1_layer_call_fn_8803259б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zѕtrace_0
Њ
Ѕtrace_02З
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8803270б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЅtrace_0
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
▓
іnon_trainable_variables
Іlayers
їmetrics
 Їlayer_regularization_losses
јlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
Ы
Јtrace_02М
,__inference_Activation_layer_call_fn_8803279б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЈtrace_0
Ї
љtrace_02Ь
G__inference_Activation_layer_call_and_return_conditional_losses_8803290б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zљtrace_0
#:!22Activation/kernel
:2Activation/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Љnon_trainable_variables
њlayers
Њmetrics
 ћlayer_regularization_losses
Ћlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
Л
ќtrace_0
Ќtrace_12ќ
(__inference_lambda_layer_call_fn_8803295
(__inference_lambda_layer_call_fn_8803300┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsџ

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zќtrace_0zЌtrace_1
Є
ўtrace_0
Ўtrace_12╠
C__inference_lambda_layer_call_and_return_conditional_losses_8803308
C__inference_lambda_layer_call_and_return_conditional_losses_8803316┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsџ

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zўtrace_0zЎtrace_1
л
џtrace_02▒
__inference_loss_fn_0_8803325Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б zџtrace_0
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
Џ0
ю1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЧBщ
'__inference_model_layer_call_fn_8802802UserItem"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ёBЂ
'__inference_model_layer_call_fn_8803069inputs_0inputs_1"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ёBЂ
'__inference_model_layer_call_fn_8803087inputs_0inputs_1"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
'__inference_model_layer_call_fn_8802959UserItem"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЪBю
B__inference_model_layer_call_and_return_conditional_losses_8803132inputs_0inputs_1"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЪBю
B__inference_model_layer_call_and_return_conditional_losses_8803177inputs_0inputs_1"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЌBћ
B__inference_model_layer_call_and_return_conditional_losses_8802988UserItem"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЌBћ
B__inference_model_layer_call_and_return_conditional_losses_8803017UserItem"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
═B╩
%__inference_signature_wrapper_8803047ItemUser"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
тBР
1__inference_Movie-Embedding_layer_call_fn_8803184inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ђB§
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8803198inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
СBр
0__inference_User-Embedding_layer_call_fn_8803205inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8803215inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
сBЯ
/__inference_FlattenMovies_layer_call_fn_8803220inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
■Bч
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8803226inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
РB▀
.__inference_FlattenUsers_layer_call_fn_8803231inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
§BЩ
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8803237inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
УBт
(__inference_Concat_layer_call_fn_8803243inputs_0inputs_1"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
C__inference_Concat_layer_call_and_return_conditional_losses_8803250inputs_0inputs_1"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ТBс
2__inference_FullyConnected-1_layer_call_fn_8803259inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЂB■
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8803270inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ЯBП
,__inference_Activation_layer_call_fn_8803279inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
G__inference_Activation_layer_call_and_return_conditional_losses_8803290inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
щBШ
(__inference_lambda_layer_call_fn_8803295inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsџ

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
щBШ
(__inference_lambda_layer_call_fn_8803300inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsџ

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ћBЉ
C__inference_lambda_layer_call_and_return_conditional_losses_8803308inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsџ

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ћBЉ
C__inference_lambda_layer_call_and_return_conditional_losses_8803316inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsџ

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
┤B▒
__inference_loss_fn_0_8803325"Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
R
Ю	variables
ъ	keras_api

Ъtotal

аcount"
_tf_keras_metric
c
А	variables
б	keras_api

Бtotal

цcount
Ц
_fn_kwargs"
_tf_keras_metric
0
Ъ0
а1"
trackable_list_wrapper
.
Ю	variables"
_generic_user_object
:  (2total
:  (2count
0
Б0
ц1"
trackable_list_wrapper
.
А	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
3:1
ЛЊ2!Adam/Movie-Embedding/embeddings/m
2:0
шА2 Adam/User-Embedding/embeddings/m
.:,
22Adam/FullyConnected-1/kernel/m
(:&22Adam/FullyConnected-1/bias/m
(:&22Adam/Activation/kernel/m
": 2Adam/Activation/bias/m
3:1
ЛЊ2!Adam/Movie-Embedding/embeddings/v
2:0
шА2 Adam/User-Embedding/embeddings/v
.:,
22Adam/FullyConnected-1/kernel/v
(:&22Adam/FullyConnected-1/bias/v
(:&22Adam/Activation/kernel/v
": 2Adam/Activation/bias/v«
G__inference_Activation_layer_call_and_return_conditional_losses_8803290cDE/б,
%б"
 і
inputs         2
ф ",б)
"і
tensor_0         
џ ѕ
,__inference_Activation_layer_call_fn_8803279XDE/б,
%б"
 і
inputs         2
ф "!і
unknown         м
C__inference_Concat_layer_call_and_return_conditional_losses_8803250іZбW
PбM
KџH
"і
inputs_0         
"і
inputs_1         
ф ",б)
"і
tensor_0         

џ Ф
(__inference_Concat_layer_call_fn_8803243ZбW
PбM
KџH
"і
inputs_0         
"і
inputs_1         
ф "!і
unknown         
▒
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_8803226c3б0
)б&
$і!
inputs         
ф ",б)
"і
tensor_0         
џ І
/__inference_FlattenMovies_layer_call_fn_8803220X3б0
)б&
$і!
inputs         
ф "!і
unknown         ░
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_8803237c3б0
)б&
$і!
inputs         
ф ",б)
"і
tensor_0         
џ і
.__inference_FlattenUsers_layer_call_fn_8803231X3б0
)б&
$і!
inputs         
ф "!і
unknown         ┤
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_8803270c<=/б,
%б"
 і
inputs         

ф ",б)
"і
tensor_0         2
џ ј
2__inference_FullyConnected-1_layer_call_fn_8803259X<=/б,
%б"
 і
inputs         

ф "!і
unknown         2Х
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_8803198f/б,
%б"
 і
inputs         
ф "0б-
&і#
tensor_0         
џ љ
1__inference_Movie-Embedding_layer_call_fn_8803184[/б,
%б"
 і
inputs         
ф "%і"
unknown         х
K__inference_User-Embedding_layer_call_and_return_conditional_losses_8803215f#/б,
%б"
 і
inputs         
ф "0б-
&і#
tensor_0         
џ Ј
0__inference_User-Embedding_layer_call_fn_8803205[#/б,
%б"
 і
inputs         
ф "%і"
unknown         ┤
"__inference__wrapped_model_8802672Ї#<=DERбO
HбE
Cџ@
і
User         
і
Item         
ф "/ф,
*
lambda і
lambda         «
C__inference_lambda_layer_call_and_return_conditional_losses_8803308g7б4
-б*
 і
inputs         

 
p 
ф ",б)
"і
tensor_0         
џ «
C__inference_lambda_layer_call_and_return_conditional_losses_8803316g7б4
-б*
 і
inputs         

 
p
ф ",б)
"і
tensor_0         
џ ѕ
(__inference_lambda_layer_call_fn_8803295\7б4
-б*
 і
inputs         

 
p 
ф "!і
unknown         ѕ
(__inference_lambda_layer_call_fn_8803300\7б4
-б*
 і
inputs         

 
p
ф "!і
unknown         E
__inference_loss_fn_0_8803325$б

б 
ф "і
unknown ┘
B__inference_model_layer_call_and_return_conditional_losses_8802988њ#<=DEZбW
PбM
Cџ@
і
User         
і
Item         
p 

 
ф ",б)
"і
tensor_0         
џ ┘
B__inference_model_layer_call_and_return_conditional_losses_8803017њ#<=DEZбW
PбM
Cџ@
і
User         
і
Item         
p

 
ф ",б)
"і
tensor_0         
џ р
B__inference_model_layer_call_and_return_conditional_losses_8803132џ#<=DEbб_
XбU
KџH
"і
inputs_0         
"і
inputs_1         
p 

 
ф ",б)
"і
tensor_0         
џ р
B__inference_model_layer_call_and_return_conditional_losses_8803177џ#<=DEbб_
XбU
KџH
"і
inputs_0         
"і
inputs_1         
p

 
ф ",б)
"і
tensor_0         
џ │
'__inference_model_layer_call_fn_8802802Є#<=DEZбW
PбM
Cџ@
і
User         
і
Item         
p 

 
ф "!і
unknown         │
'__inference_model_layer_call_fn_8802959Є#<=DEZбW
PбM
Cџ@
і
User         
і
Item         
p

 
ф "!і
unknown         ╗
'__inference_model_layer_call_fn_8803069Ј#<=DEbб_
XбU
KџH
"і
inputs_0         
"і
inputs_1         
p 

 
ф "!і
unknown         ╗
'__inference_model_layer_call_fn_8803087Ј#<=DEbб_
XбU
KџH
"і
inputs_0         
"і
inputs_1         
p

 
ф "!і
unknown         ┬
%__inference_signature_wrapper_8803047ў#<=DE]бZ
б 
SфP
&
Itemі
item         
&
Userі
user         "/ф,
*
lambda і
lambda         