√М

Жщ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
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
resourceИ
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
е
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
executor_typestring Ии
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.12.02unknown8Бе
Д
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
М
Adam/Activation/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*)
shared_nameAdam/Activation/kernel/v
Е
,Adam/Activation/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Activation/kernel/v*
_output_shapes

:2*
dtype0
Р
Adam/FullyConnected-1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*-
shared_nameAdam/FullyConnected-1/bias/v
Й
0Adam/FullyConnected-1/bias/v/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/bias/v*
_output_shapes
:2*
dtype0
Ш
Adam/FullyConnected-1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*/
shared_name Adam/FullyConnected-1/kernel/v
С
2Adam/FullyConnected-1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/kernel/v*
_output_shapes

:2*
dtype0
Э
 Adam/User-Embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	░*1
shared_name" Adam/User-Embedding/embeddings/v
Ц
4Adam/User-Embedding/embeddings/v/Read/ReadVariableOpReadVariableOp Adam/User-Embedding/embeddings/v*
_output_shapes
:	░*
dtype0
Я
!Adam/Movie-Embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	У*2
shared_name#!Adam/Movie-Embedding/embeddings/v
Ш
5Adam/Movie-Embedding/embeddings/v/Read/ReadVariableOpReadVariableOp!Adam/Movie-Embedding/embeddings/v*
_output_shapes
:	У*
dtype0
Д
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
М
Adam/Activation/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*)
shared_nameAdam/Activation/kernel/m
Е
,Adam/Activation/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Activation/kernel/m*
_output_shapes

:2*
dtype0
Р
Adam/FullyConnected-1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*-
shared_nameAdam/FullyConnected-1/bias/m
Й
0Adam/FullyConnected-1/bias/m/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/bias/m*
_output_shapes
:2*
dtype0
Ш
Adam/FullyConnected-1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*/
shared_name Adam/FullyConnected-1/kernel/m
С
2Adam/FullyConnected-1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/FullyConnected-1/kernel/m*
_output_shapes

:2*
dtype0
Э
 Adam/User-Embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	░*1
shared_name" Adam/User-Embedding/embeddings/m
Ц
4Adam/User-Embedding/embeddings/m/Read/ReadVariableOpReadVariableOp Adam/User-Embedding/embeddings/m*
_output_shapes
:	░*
dtype0
Я
!Adam/Movie-Embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	У*2
shared_name#!Adam/Movie-Embedding/embeddings/m
Ш
5Adam/Movie-Embedding/embeddings/m/Read/ReadVariableOpReadVariableOp!Adam/Movie-Embedding/embeddings/m*
_output_shapes
:	У*
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
В
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
К
FullyConnected-1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*(
shared_nameFullyConnected-1/kernel
Г
+FullyConnected-1/kernel/Read/ReadVariableOpReadVariableOpFullyConnected-1/kernel*
_output_shapes

:2*
dtype0
П
User-Embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	░**
shared_nameUser-Embedding/embeddings
И
-User-Embedding/embeddings/Read/ReadVariableOpReadVariableOpUser-Embedding/embeddings*
_output_shapes
:	░*
dtype0
С
Movie-Embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	У*+
shared_nameMovie-Embedding/embeddings
К
.Movie-Embedding/embeddings/Read/ReadVariableOpReadVariableOpMovie-Embedding/embeddings*
_output_shapes
:	У*
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
▐
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
GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_1320369

NoOpNoOp
╠F
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЗF
value¤EB·E BєE
╢
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
О
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
О
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
О
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
ж
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias*
ж
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias*
О
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
^learning_ratemж#mз<mи=mйDmкEmлvм#vн<vо=vпDv░Ev▒*

_serving_default* 
* 
* 

0*

0*
	
L0* 
У
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
У
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
С
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
С
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
Т
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
Аlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

Бtrace_0* 

Вtrace_0* 

<0
=1*

<0
=1*
* 
Ш
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

Иtrace_0* 

Йtrace_0* 
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
Ш
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

Пtrace_0* 

Рtrace_0* 
a[
VARIABLE_VALUEActivation/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEActivation/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 

Цtrace_0
Чtrace_1* 

Шtrace_0
Щtrace_1* 

Ъtrace_0* 
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
Ы0
Ь1*
* 
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
Э	variables
Ю	keras_api

Яtotal

аcount*
M
б	variables
в	keras_api

гtotal

дcount
е
_fn_kwargs*

Я0
а1*

Э	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

г0
д1*

б	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
ТЛ
VARIABLE_VALUE!Adam/Movie-Embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
СК
VARIABLE_VALUE Adam/User-Embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЛД
VARIABLE_VALUEAdam/FullyConnected-1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUEAdam/FullyConnected-1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/Activation/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/Activation/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ТЛ
VARIABLE_VALUE!Adam/Movie-Embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
СК
VARIABLE_VALUE Adam/User-Embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЛД
VARIABLE_VALUEAdam/FullyConnected-1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUEAdam/FullyConnected-1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/Activation/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/Activation/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
С
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
GPU 2J 8В *)
f$R"
 __inference__traced_save_1320833
М
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
GPU 2J 8В *,
f'R%
#__inference__traced_restore_1320924┬У
╛
b
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320098

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А@T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:         J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?W
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
ў	
Щ
*__inference_model_13_layer_call_fn_1320391
inputs_0
inputs_1
unknown:	░
	unknown_0:	У
	unknown_1:2
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИвStatefulPartitionedCallЫ
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
GPU 2J 8В *N
fIRG
E__inference_model_13_layer_call_and_return_conditional_losses_1320175o
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
┴
e
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_1320559

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▒
Е
0__inference_User-Embedding_layer_call_fn_1320527

inputs
unknown:	░
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_1320009s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
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
┬
f
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_1320037

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
э5
Е
E__inference_model_13_layer_call_and_return_conditional_losses_1320454
inputs_0
inputs_1:
'user_embedding_embedding_lookup_1320414:	░;
(movie_embedding_embedding_lookup_1320420:	УA
/fullyconnected_1_matmul_readvariableop_resource:2>
0fullyconnected_1_biasadd_readvariableop_resource:2;
)activation_matmul_readvariableop_resource:28
*activation_biasadd_readvariableop_resource:
identityИв!Activation/BiasAdd/ReadVariableOpв Activation/MatMul/ReadVariableOpв'FullyConnected-1/BiasAdd/ReadVariableOpв&FullyConnected-1/MatMul/ReadVariableOpв Movie-Embedding/embedding_lookupв<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpвUser-Embedding/embedding_lookupf
User-Embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:         ∙
User-Embedding/embedding_lookupResourceGather'user_embedding_embedding_lookup_1320414User-Embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@User-Embedding/embedding_lookup/1320414*+
_output_shapes
:         *
dtype0╨
(User-Embedding/embedding_lookup/IdentityIdentity(User-Embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@User-Embedding/embedding_lookup/1320414*+
_output_shapes
:         Я
*User-Embedding/embedding_lookup/Identity_1Identity1User-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         g
Movie-Embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:         ¤
 Movie-Embedding/embedding_lookupResourceGather(movie_embedding_embedding_lookup_1320420Movie-Embedding/Cast:y:0*
Tindices0*;
_class1
/-loc:@Movie-Embedding/embedding_lookup/1320420*+
_output_shapes
:         *
dtype0╙
)Movie-Embedding/embedding_lookup/IdentityIdentity)Movie-Embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Movie-Embedding/embedding_lookup/1320420*+
_output_shapes
:         б
+Movie-Embedding/embedding_lookup/Identity_1Identity2Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         d
FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ж
FlattenMovies/ReshapeReshape4Movie-Embedding/embedding_lookup/Identity_1:output:0FlattenMovies/Const:output:0*
T0*'
_output_shapes
:         c
FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"       г
FlattenUsers/ReshapeReshape3User-Embedding/embedding_lookup/Identity_1:output:0FlattenUsers/Const:output:0*
T0*'
_output_shapes
:         T
Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :░
Concat/concatConcatV2FlattenMovies/Reshape:output:0FlattenUsers/Reshape:output:0Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:         Ц
&FullyConnected-1/MatMul/ReadVariableOpReadVariableOp/fullyconnected_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Ы
FullyConnected-1/MatMulMatMulConcat/concat:output:0.FullyConnected-1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2Ф
'FullyConnected-1/BiasAdd/ReadVariableOpReadVariableOp0fullyconnected_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0й
FullyConnected-1/BiasAddBiasAdd!FullyConnected-1/MatMul:product:0/FullyConnected-1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
FullyConnected-1/ReluRelu!FullyConnected-1/BiasAdd:output:0*
T0*'
_output_shapes
:         2К
 Activation/MatMul/ReadVariableOpReadVariableOp)activation_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Ь
Activation/MatMulMatMul#FullyConnected-1/Relu:activations:0(Activation/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         И
!Activation/BiasAdd/ReadVariableOpReadVariableOp*activation_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ч
Activation/BiasAddBiasAddActivation/MatMul:product:0)Activation/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         l
Activation/SigmoidSigmoidActivation/BiasAdd:output:0*
T0*'
_output_shapes
:         T
lambda_13/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А@x
lambda_13/mulMullambda_13/mul/x:output:0Activation/Sigmoid:y:0*
T0*'
_output_shapes
:         T
lambda_13/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
lambda_13/addAddV2lambda_13/mul:z:0lambda_13/add/y:output:0*
T0*'
_output_shapes
:         ж
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp(movie_embedding_embedding_lookup_1320420*
_output_shapes
:	У*
dtype0Ю
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
: `
IdentityIdentitylambda_13/add:z:0^NoOp*
T0*'
_output_shapes
:         ф
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
э5
Е
E__inference_model_13_layer_call_and_return_conditional_losses_1320499
inputs_0
inputs_1:
'user_embedding_embedding_lookup_1320459:	░;
(movie_embedding_embedding_lookup_1320465:	УA
/fullyconnected_1_matmul_readvariableop_resource:2>
0fullyconnected_1_biasadd_readvariableop_resource:2;
)activation_matmul_readvariableop_resource:28
*activation_biasadd_readvariableop_resource:
identityИв!Activation/BiasAdd/ReadVariableOpв Activation/MatMul/ReadVariableOpв'FullyConnected-1/BiasAdd/ReadVariableOpв&FullyConnected-1/MatMul/ReadVariableOpв Movie-Embedding/embedding_lookupв<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpвUser-Embedding/embedding_lookupf
User-Embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:         ∙
User-Embedding/embedding_lookupResourceGather'user_embedding_embedding_lookup_1320459User-Embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@User-Embedding/embedding_lookup/1320459*+
_output_shapes
:         *
dtype0╨
(User-Embedding/embedding_lookup/IdentityIdentity(User-Embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@User-Embedding/embedding_lookup/1320459*+
_output_shapes
:         Я
*User-Embedding/embedding_lookup/Identity_1Identity1User-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         g
Movie-Embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:         ¤
 Movie-Embedding/embedding_lookupResourceGather(movie_embedding_embedding_lookup_1320465Movie-Embedding/Cast:y:0*
Tindices0*;
_class1
/-loc:@Movie-Embedding/embedding_lookup/1320465*+
_output_shapes
:         *
dtype0╙
)Movie-Embedding/embedding_lookup/IdentityIdentity)Movie-Embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Movie-Embedding/embedding_lookup/1320465*+
_output_shapes
:         б
+Movie-Embedding/embedding_lookup/Identity_1Identity2Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         d
FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ж
FlattenMovies/ReshapeReshape4Movie-Embedding/embedding_lookup/Identity_1:output:0FlattenMovies/Const:output:0*
T0*'
_output_shapes
:         c
FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"       г
FlattenUsers/ReshapeReshape3User-Embedding/embedding_lookup/Identity_1:output:0FlattenUsers/Const:output:0*
T0*'
_output_shapes
:         T
Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :░
Concat/concatConcatV2FlattenMovies/Reshape:output:0FlattenUsers/Reshape:output:0Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:         Ц
&FullyConnected-1/MatMul/ReadVariableOpReadVariableOp/fullyconnected_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Ы
FullyConnected-1/MatMulMatMulConcat/concat:output:0.FullyConnected-1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2Ф
'FullyConnected-1/BiasAdd/ReadVariableOpReadVariableOp0fullyconnected_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0й
FullyConnected-1/BiasAddBiasAdd!FullyConnected-1/MatMul:product:0/FullyConnected-1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
FullyConnected-1/ReluRelu!FullyConnected-1/BiasAdd:output:0*
T0*'
_output_shapes
:         2К
 Activation/MatMul/ReadVariableOpReadVariableOp)activation_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Ь
Activation/MatMulMatMul#FullyConnected-1/Relu:activations:0(Activation/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         И
!Activation/BiasAdd/ReadVariableOpReadVariableOp*activation_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ч
Activation/BiasAddBiasAddActivation/MatMul:product:0)Activation/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         l
Activation/SigmoidSigmoidActivation/BiasAdd:output:0*
T0*'
_output_shapes
:         T
lambda_13/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А@x
lambda_13/mulMullambda_13/mul/x:output:0Activation/Sigmoid:y:0*
T0*'
_output_shapes
:         T
lambda_13/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?u
lambda_13/addAddV2lambda_13/mul:z:0lambda_13/add/y:output:0*
T0*'
_output_shapes
:         ж
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp(movie_embedding_embedding_lookup_1320465*
_output_shapes
:	У*
dtype0Ю
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
: `
IdentityIdentitylambda_13/add:z:0^NoOp*
T0*'
_output_shapes
:         ф
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
╛
b
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320638

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А@T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:         J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?W
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
╚╦
Е
 __inference__traced_save_1320833
file_prefixD
1read_disablecopyonread_movie_embedding_embeddings:	УE
2read_1_disablecopyonread_user_embedding_embeddings:	░B
0read_2_disablecopyonread_fullyconnected_1_kernel:2<
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
;read_15_disablecopyonread_adam_movie_embedding_embeddings_m:	УM
:read_16_disablecopyonread_adam_user_embedding_embeddings_m:	░J
8read_17_disablecopyonread_adam_fullyconnected_1_kernel_m:2D
6read_18_disablecopyonread_adam_fullyconnected_1_bias_m:2D
2read_19_disablecopyonread_adam_activation_kernel_m:2>
0read_20_disablecopyonread_adam_activation_bias_m:N
;read_21_disablecopyonread_adam_movie_embedding_embeddings_v:	УM
:read_22_disablecopyonread_adam_user_embedding_embeddings_v:	░J
8read_23_disablecopyonread_adam_fullyconnected_1_kernel_v:2D
6read_24_disablecopyonread_adam_fullyconnected_1_bias_v:2D
2read_25_disablecopyonread_adam_activation_kernel_v:2>
0read_26_disablecopyonread_adam_activation_bias_v:
savev2_const
identity_55ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Г
Read/DisableCopyOnReadDisableCopyOnRead1read_disablecopyonread_movie_embedding_embeddings"/device:CPU:0*
_output_shapes
 о
Read/ReadVariableOpReadVariableOp1read_disablecopyonread_movie_embedding_embeddings^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	У*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Уb

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	УЖ
Read_1/DisableCopyOnReadDisableCopyOnRead2read_1_disablecopyonread_user_embedding_embeddings"/device:CPU:0*
_output_shapes
 │
Read_1/ReadVariableOpReadVariableOp2read_1_disablecopyonread_user_embedding_embeddings^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	░*
dtype0n

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	░d

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:	░Д
Read_2/DisableCopyOnReadDisableCopyOnRead0read_2_disablecopyonread_fullyconnected_1_kernel"/device:CPU:0*
_output_shapes
 ░
Read_2/ReadVariableOpReadVariableOp0read_2_disablecopyonread_fullyconnected_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:2В
Read_3/DisableCopyOnReadDisableCopyOnRead.read_3_disablecopyonread_fullyconnected_1_bias"/device:CPU:0*
_output_shapes
 к
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
 к
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
 д
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
 Ъ
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
 Ь
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
 Ь
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
 Ы
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
: Б
Read_10/DisableCopyOnReadDisableCopyOnRead,read_10_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 ж
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
 Ы
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
 Ы
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
 Щ
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
 Щ
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
: Р
Read_15/DisableCopyOnReadDisableCopyOnRead;read_15_disablecopyonread_adam_movie_embedding_embeddings_m"/device:CPU:0*
_output_shapes
 ╛
Read_15/ReadVariableOpReadVariableOp;read_15_disablecopyonread_adam_movie_embedding_embeddings_m^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	У*
dtype0p
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Уf
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:	УП
Read_16/DisableCopyOnReadDisableCopyOnRead:read_16_disablecopyonread_adam_user_embedding_embeddings_m"/device:CPU:0*
_output_shapes
 ╜
Read_16/ReadVariableOpReadVariableOp:read_16_disablecopyonread_adam_user_embedding_embeddings_m^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	░*
dtype0p
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	░f
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:	░Н
Read_17/DisableCopyOnReadDisableCopyOnRead8read_17_disablecopyonread_adam_fullyconnected_1_kernel_m"/device:CPU:0*
_output_shapes
 ║
Read_17/ReadVariableOpReadVariableOp8read_17_disablecopyonread_adam_fullyconnected_1_kernel_m^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:2Л
Read_18/DisableCopyOnReadDisableCopyOnRead6read_18_disablecopyonread_adam_fullyconnected_1_bias_m"/device:CPU:0*
_output_shapes
 ┤
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
:2З
Read_19/DisableCopyOnReadDisableCopyOnRead2read_19_disablecopyonread_adam_activation_kernel_m"/device:CPU:0*
_output_shapes
 ┤
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

:2Е
Read_20/DisableCopyOnReadDisableCopyOnRead0read_20_disablecopyonread_adam_activation_bias_m"/device:CPU:0*
_output_shapes
 о
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
:Р
Read_21/DisableCopyOnReadDisableCopyOnRead;read_21_disablecopyonread_adam_movie_embedding_embeddings_v"/device:CPU:0*
_output_shapes
 ╛
Read_21/ReadVariableOpReadVariableOp;read_21_disablecopyonread_adam_movie_embedding_embeddings_v^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	У*
dtype0p
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Уf
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:	УП
Read_22/DisableCopyOnReadDisableCopyOnRead:read_22_disablecopyonread_adam_user_embedding_embeddings_v"/device:CPU:0*
_output_shapes
 ╜
Read_22/ReadVariableOpReadVariableOp:read_22_disablecopyonread_adam_user_embedding_embeddings_v^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	░*
dtype0p
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	░f
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:	░Н
Read_23/DisableCopyOnReadDisableCopyOnRead8read_23_disablecopyonread_adam_fullyconnected_1_kernel_v"/device:CPU:0*
_output_shapes
 ║
Read_23/ReadVariableOpReadVariableOp8read_23_disablecopyonread_adam_fullyconnected_1_kernel_v^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:2Л
Read_24/DisableCopyOnReadDisableCopyOnRead6read_24_disablecopyonread_adam_fullyconnected_1_bias_v"/device:CPU:0*
_output_shapes
 ┤
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
:2З
Read_25/DisableCopyOnReadDisableCopyOnRead2read_25_disablecopyonread_adam_activation_kernel_v"/device:CPU:0*
_output_shapes
 ┤
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

:2Е
Read_26/DisableCopyOnReadDisableCopyOnRead0read_26_disablecopyonread_adam_activation_bias_v"/device:CPU:0*
_output_shapes
 о
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
:У
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╝
value▓BпB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHе
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B └
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 **
dtypes 
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
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
: ┌
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
█*
╟
E__inference_model_13_layer_call_and_return_conditional_losses_1320222

inputs
inputs_1)
user_embedding_1320197:	░*
movie_embedding_1320200:	У*
fullyconnected_1_1320206:2&
fullyconnected_1_1320208:2$
activation_1320211:2 
activation_1320213:
identityИв"Activation/StatefulPartitionedCallв(FullyConnected-1/StatefulPartitionedCallв'Movie-Embedding/StatefulPartitionedCallв<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpв&User-Embedding/StatefulPartitionedCallї
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_1320197*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_1320009·
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_1320200*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_1320027э
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_1320037ъ
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_1320045¤
Concat/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_1320054м
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0fullyconnected_1_1320206fullyconnected_1_1320208*
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
GPU 2J 8В *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_1320067ж
"Activation/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0activation_1320211activation_1320213*
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
GPU 2J 8В *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_1320084р
lambda_13/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
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
GPU 2J 8В *O
fJRH
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320135Х
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_1320200*
_output_shapes
:	У*
dtype0Ю
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
: q
IdentityIdentity"lambda_13/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         и
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
┤
m
C__inference_Concat_layer_call_and_return_conditional_losses_1320054

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
:         W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
┴
e
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_1320045

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
м	
к
K__inference_User-Embedding_layer_call_and_return_conditional_losses_1320009

inputs+
embedding_lookup_1320003:	░
identityИвembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         ╜
embedding_lookupResourceGatherembedding_lookup_1320003Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1320003*+
_output_shapes
:         *
dtype0г
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1320003*+
_output_shapes
:         Б
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         Y
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
╦*
┴
E__inference_model_13_layer_call_and_return_conditional_losses_1320105
user
item)
user_embedding_1320010:	░*
movie_embedding_1320028:	У*
fullyconnected_1_1320068:2&
fullyconnected_1_1320070:2$
activation_1320085:2 
activation_1320087:
identityИв"Activation/StatefulPartitionedCallв(FullyConnected-1/StatefulPartitionedCallв'Movie-Embedding/StatefulPartitionedCallв<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpв&User-Embedding/StatefulPartitionedCallє
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_1320010*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_1320009Ў
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallitemmovie_embedding_1320028*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_1320027э
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_1320037ъ
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_1320045¤
Concat/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_1320054м
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0fullyconnected_1_1320068fullyconnected_1_1320070*
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
GPU 2J 8В *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_1320067ж
"Activation/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0activation_1320085activation_1320087*
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
GPU 2J 8В *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_1320084р
lambda_13/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
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
GPU 2J 8В *O
fJRH
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320098Х
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_1320028*
_output_shapes
:	У*
dtype0Ю
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
: q
IdentityIdentity"lambda_13/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         и
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
│
Ж
1__inference_Movie-Embedding_layer_call_fn_1320506

inputs
unknown:	У
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_1320027s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
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
█*
╟
E__inference_model_13_layer_call_and_return_conditional_losses_1320175

inputs
inputs_1)
user_embedding_1320150:	░*
movie_embedding_1320153:	У*
fullyconnected_1_1320159:2&
fullyconnected_1_1320161:2$
activation_1320164:2 
activation_1320166:
identityИв"Activation/StatefulPartitionedCallв(FullyConnected-1/StatefulPartitionedCallв'Movie-Embedding/StatefulPartitionedCallв<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpв&User-Embedding/StatefulPartitionedCallї
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_1320150*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_1320009·
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_1320153*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_1320027э
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_1320037ъ
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_1320045¤
Concat/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_1320054м
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0fullyconnected_1_1320159fullyconnected_1_1320161*
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
GPU 2J 8В *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_1320067ж
"Activation/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0activation_1320164activation_1320166*
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
GPU 2J 8В *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_1320084р
lambda_13/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
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
GPU 2J 8В *O
fJRH
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320098Х
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_1320153*
_output_shapes
:	У*
dtype0Ю
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
: q
IdentityIdentity"lambda_13/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         и
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
▀	
С
*__inference_model_13_layer_call_fn_1320237
user
item
unknown:	░
	unknown_0:	У
	unknown_1:2
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИвStatefulPartitionedCallУ
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
GPU 2J 8В *N
fIRG
E__inference_model_13_layer_call_and_return_conditional_losses_1320222o
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
Ы
ъ
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_1320027

inputs+
embedding_lookup_1320017:	У
identityИв<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpвembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         ╜
embedding_lookupResourceGatherembedding_lookup_1320017Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1320017*+
_output_shapes
:         *
dtype0г
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1320017*+
_output_shapes
:         Б
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         Ц
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_1320017*
_output_shapes
:	У*
dtype0Ю
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
:         Ш
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
╛
b
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320135

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А@T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:         J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?W
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
▀	
С
*__inference_model_13_layer_call_fn_1320190
user
item
unknown:	░
	unknown_0:	У
	unknown_1:2
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИвStatefulPartitionedCallУ
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
GPU 2J 8В *N
fIRG
E__inference_model_13_layer_call_and_return_conditional_losses_1320175o
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
╘
Я
2__inference_FullyConnected-1_layer_call_fn_1320581

inputs
unknown:2
	unknown_0:2
identityИвStatefulPartitionedCallт
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
GPU 2J 8В *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_1320067o
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
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
б
G
+__inference_lambda_13_layer_call_fn_1320622

inputs
identity▒
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
GPU 2J 8В *O
fJRH
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320135`
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
д

■
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_1320592

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
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
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╛

╔
__inference_loss_fn_0_1320647X
Emovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource:	У
identityИв<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp├
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpEmovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	У*
dtype0Ю
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
: Е
NoOpNoOp=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp
╝
o
C__inference_Concat_layer_call_and_return_conditional_losses_1320572
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
:         W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1
┬
f
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_1320548

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
д

■
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_1320067

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
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
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
▄w
Ж
#__inference__traced_restore_1320924
file_prefix>
+assignvariableop_movie_embedding_embeddings:	У?
,assignvariableop_1_user_embedding_embeddings:	░<
*assignvariableop_2_fullyconnected_1_kernel:26
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
5assignvariableop_15_adam_movie_embedding_embeddings_m:	УG
4assignvariableop_16_adam_user_embedding_embeddings_m:	░D
2assignvariableop_17_adam_fullyconnected_1_kernel_m:2>
0assignvariableop_18_adam_fullyconnected_1_bias_m:2>
,assignvariableop_19_adam_activation_kernel_m:28
*assignvariableop_20_adam_activation_bias_m:H
5assignvariableop_21_adam_movie_embedding_embeddings_v:	УG
4assignvariableop_22_adam_user_embedding_embeddings_v:	░D
2assignvariableop_23_adam_fullyconnected_1_kernel_v:2>
0assignvariableop_24_adam_fullyconnected_1_bias_v:2>
,assignvariableop_25_adam_activation_kernel_v:28
*assignvariableop_26_adam_activation_bias_v:
identity_28ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ц
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╝
value▓BпB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHи
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B л
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Д
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:╛
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
:╡
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╡
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
 б
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: О
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
а
T
(__inference_Concat_layer_call_fn_1320565
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
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_1320054`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1
▒
K
/__inference_FlattenMovies_layer_call_fn_1320542

inputs
identity╡
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_1320037`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ш5
З
"__inference__wrapped_model_1319994
user
itemC
0model_13_user_embedding_embedding_lookup_1319958:	░D
1model_13_movie_embedding_embedding_lookup_1319964:	УJ
8model_13_fullyconnected_1_matmul_readvariableop_resource:2G
9model_13_fullyconnected_1_biasadd_readvariableop_resource:2D
2model_13_activation_matmul_readvariableop_resource:2A
3model_13_activation_biasadd_readvariableop_resource:
identityИв*model_13/Activation/BiasAdd/ReadVariableOpв)model_13/Activation/MatMul/ReadVariableOpв0model_13/FullyConnected-1/BiasAdd/ReadVariableOpв/model_13/FullyConnected-1/MatMul/ReadVariableOpв)model_13/Movie-Embedding/embedding_lookupв(model_13/User-Embedding/embedding_lookupk
model_13/User-Embedding/CastCastuser*

DstT0*

SrcT0*'
_output_shapes
:         Э
(model_13/User-Embedding/embedding_lookupResourceGather0model_13_user_embedding_embedding_lookup_1319958 model_13/User-Embedding/Cast:y:0*
Tindices0*C
_class9
75loc:@model_13/User-Embedding/embedding_lookup/1319958*+
_output_shapes
:         *
dtype0ы
1model_13/User-Embedding/embedding_lookup/IdentityIdentity1model_13/User-Embedding/embedding_lookup:output:0*
T0*C
_class9
75loc:@model_13/User-Embedding/embedding_lookup/1319958*+
_output_shapes
:         ▒
3model_13/User-Embedding/embedding_lookup/Identity_1Identity:model_13/User-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         l
model_13/Movie-Embedding/CastCastitem*

DstT0*

SrcT0*'
_output_shapes
:         б
)model_13/Movie-Embedding/embedding_lookupResourceGather1model_13_movie_embedding_embedding_lookup_1319964!model_13/Movie-Embedding/Cast:y:0*
Tindices0*D
_class:
86loc:@model_13/Movie-Embedding/embedding_lookup/1319964*+
_output_shapes
:         *
dtype0ю
2model_13/Movie-Embedding/embedding_lookup/IdentityIdentity2model_13/Movie-Embedding/embedding_lookup:output:0*
T0*D
_class:
86loc:@model_13/Movie-Embedding/embedding_lookup/1319964*+
_output_shapes
:         │
4model_13/Movie-Embedding/embedding_lookup/Identity_1Identity;model_13/Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         m
model_13/FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ┴
model_13/FlattenMovies/ReshapeReshape=model_13/Movie-Embedding/embedding_lookup/Identity_1:output:0%model_13/FlattenMovies/Const:output:0*
T0*'
_output_shapes
:         l
model_13/FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╛
model_13/FlattenUsers/ReshapeReshape<model_13/User-Embedding/embedding_lookup/Identity_1:output:0$model_13/FlattenUsers/Const:output:0*
T0*'
_output_shapes
:         ]
model_13/Concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╘
model_13/Concat/concatConcatV2'model_13/FlattenMovies/Reshape:output:0&model_13/FlattenUsers/Reshape:output:0$model_13/Concat/concat/axis:output:0*
N*
T0*'
_output_shapes
:         и
/model_13/FullyConnected-1/MatMul/ReadVariableOpReadVariableOp8model_13_fullyconnected_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0╢
 model_13/FullyConnected-1/MatMulMatMulmodel_13/Concat/concat:output:07model_13/FullyConnected-1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2ж
0model_13/FullyConnected-1/BiasAdd/ReadVariableOpReadVariableOp9model_13_fullyconnected_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0─
!model_13/FullyConnected-1/BiasAddBiasAdd*model_13/FullyConnected-1/MatMul:product:08model_13/FullyConnected-1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2Д
model_13/FullyConnected-1/ReluRelu*model_13/FullyConnected-1/BiasAdd:output:0*
T0*'
_output_shapes
:         2Ь
)model_13/Activation/MatMul/ReadVariableOpReadVariableOp2model_13_activation_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0╖
model_13/Activation/MatMulMatMul,model_13/FullyConnected-1/Relu:activations:01model_13/Activation/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ъ
*model_13/Activation/BiasAdd/ReadVariableOpReadVariableOp3model_13_activation_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0▓
model_13/Activation/BiasAddBiasAdd$model_13/Activation/MatMul:product:02model_13/Activation/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
model_13/Activation/SigmoidSigmoid$model_13/Activation/BiasAdd:output:0*
T0*'
_output_shapes
:         ]
model_13/lambda_13/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А@У
model_13/lambda_13/mulMul!model_13/lambda_13/mul/x:output:0model_13/Activation/Sigmoid:y:0*
T0*'
_output_shapes
:         ]
model_13/lambda_13/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Р
model_13/lambda_13/addAddV2model_13/lambda_13/mul:z:0!model_13/lambda_13/add/y:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitymodel_13/lambda_13/add:z:0^NoOp*
T0*'
_output_shapes
:         █
NoOpNoOp+^model_13/Activation/BiasAdd/ReadVariableOp*^model_13/Activation/MatMul/ReadVariableOp1^model_13/FullyConnected-1/BiasAdd/ReadVariableOp0^model_13/FullyConnected-1/MatMul/ReadVariableOp*^model_13/Movie-Embedding/embedding_lookup)^model_13/User-Embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:         :         : : : : : : 2X
*model_13/Activation/BiasAdd/ReadVariableOp*model_13/Activation/BiasAdd/ReadVariableOp2V
)model_13/Activation/MatMul/ReadVariableOp)model_13/Activation/MatMul/ReadVariableOp2d
0model_13/FullyConnected-1/BiasAdd/ReadVariableOp0model_13/FullyConnected-1/BiasAdd/ReadVariableOp2b
/model_13/FullyConnected-1/MatMul/ReadVariableOp/model_13/FullyConnected-1/MatMul/ReadVariableOp2V
)model_13/Movie-Embedding/embedding_lookup)model_13/Movie-Embedding/embedding_lookup2T
(model_13/User-Embedding/embedding_lookup(model_13/User-Embedding/embedding_lookup:M I
'
_output_shapes
:         

_user_specified_nameUser:MI
'
_output_shapes
:         

_user_specified_nameItem
б
G
+__inference_lambda_13_layer_call_fn_1320617

inputs
identity▒
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
GPU 2J 8В *O
fJRH
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320098`
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
Э

°
G__inference_Activation_layer_call_and_return_conditional_losses_1320612

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
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
Ы
ъ
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_1320520

inputs+
embedding_lookup_1320510:	У
identityИв<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpвembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         ╜
embedding_lookupResourceGatherembedding_lookup_1320510Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1320510*+
_output_shapes
:         *
dtype0г
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1320510*+
_output_shapes
:         Б
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         Ц
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_1320510*
_output_shapes
:	У*
dtype0Ю
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
:         Ш
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
╛
b
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320630

inputs
identityJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А@T
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:         J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?W
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
ў	
Щ
*__inference_model_13_layer_call_fn_1320409
inputs_0
inputs_1
unknown:	░
	unknown_0:	У
	unknown_1:2
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИвStatefulPartitionedCallЫ
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
GPU 2J 8В *N
fIRG
E__inference_model_13_layer_call_and_return_conditional_losses_1320222o
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
╖	
М
%__inference_signature_wrapper_1320369
item
user
unknown:	░
	unknown_0:	У
	unknown_1:2
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИвStatefulPartitionedCallЁ
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
GPU 2J 8В *+
f&R$
"__inference__wrapped_model_1319994o
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
Э

°
G__inference_Activation_layer_call_and_return_conditional_losses_1320084

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
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
╚
Щ
,__inference_Activation_layer_call_fn_1320601

inputs
unknown:2
	unknown_0:
identityИвStatefulPartitionedCall▄
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
GPU 2J 8В *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_1320084o
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
╦*
┴
E__inference_model_13_layer_call_and_return_conditional_losses_1320142
user
item)
user_embedding_1320109:	░*
movie_embedding_1320112:	У*
fullyconnected_1_1320118:2&
fullyconnected_1_1320120:2$
activation_1320123:2 
activation_1320125:
identityИв"Activation/StatefulPartitionedCallв(FullyConnected-1/StatefulPartitionedCallв'Movie-Embedding/StatefulPartitionedCallв<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpв&User-Embedding/StatefulPartitionedCallє
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_1320109*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_User-Embedding_layer_call_and_return_conditional_losses_1320009Ў
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallitemmovie_embedding_1320112*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_1320027э
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_1320037ъ
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_1320045¤
Concat/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Concat_layer_call_and_return_conditional_losses_1320054м
(FullyConnected-1/StatefulPartitionedCallStatefulPartitionedCallConcat/PartitionedCall:output:0fullyconnected_1_1320118fullyconnected_1_1320120*
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
GPU 2J 8В *V
fQRO
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_1320067ж
"Activation/StatefulPartitionedCallStatefulPartitionedCall1FullyConnected-1/StatefulPartitionedCall:output:0activation_1320123activation_1320125*
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
GPU 2J 8В *P
fKRI
G__inference_Activation_layer_call_and_return_conditional_losses_1320084р
lambda_13/PartitionedCallPartitionedCall+Activation/StatefulPartitionedCall:output:0*
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
GPU 2J 8В *O
fJRH
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320135Х
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_1320112*
_output_shapes
:	У*
dtype0Ю
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
: q
IdentityIdentity"lambda_13/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         и
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
п
J
.__inference_FlattenUsers_layer_call_fn_1320553

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
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_1320045`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
м	
к
K__inference_User-Embedding_layer_call_and_return_conditional_losses_1320537

inputs+
embedding_lookup_1320531:	░
identityИвembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         ╜
embedding_lookupResourceGatherembedding_lookup_1320531Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1320531*+
_output_shapes
:         *
dtype0г
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1320531*+
_output_shapes
:         Б
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         Y
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
 
_user_specified_nameinputs"є
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*▌
serving_default╔
5
Item-
serving_default_Item:0         
5
User-
serving_default_User:0         =
	lambda_130
StatefulPartitionedCall:0         tensorflow/serving/predict:┌╤
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
╡
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
╡
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#
embeddings"
_tf_keras_layer
е
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
е
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
е
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
е
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
╙
Rtrace_0
Strace_1
Ttrace_2
Utrace_32ш
*__inference_model_13_layer_call_fn_1320190
*__inference_model_13_layer_call_fn_1320237
*__inference_model_13_layer_call_fn_1320391
*__inference_model_13_layer_call_fn_1320409╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zRtrace_0zStrace_1zTtrace_2zUtrace_3
┐
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32╘
E__inference_model_13_layer_call_and_return_conditional_losses_1320105
E__inference_model_13_layer_call_and_return_conditional_losses_1320142
E__inference_model_13_layer_call_and_return_conditional_losses_1320454
E__inference_model_13_layer_call_and_return_conditional_losses_1320499╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
╨B═
"__inference__wrapped_model_1319994UserItem"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╦
Ziter

[beta_1

\beta_2
	]decay
^learning_ratemж#mз<mи=mйDmкEmлvм#vн<vо=vпDv░Ev▒"
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
н
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
ы
etrace_02╬
1__inference_Movie-Embedding_layer_call_fn_1320506Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zetrace_0
Ж
ftrace_02щ
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_1320520Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zftrace_0
-:+	У2Movie-Embedding/embeddings
'
#0"
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
н
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
ъ
ltrace_02═
0__inference_User-Embedding_layer_call_fn_1320527Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zltrace_0
Е
mtrace_02ш
K__inference_User-Embedding_layer_call_and_return_conditional_losses_1320537Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zmtrace_0
,:*	░2User-Embedding/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
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
щ
strace_02╠
/__inference_FlattenMovies_layer_call_fn_1320542Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zstrace_0
Д
ttrace_02ч
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_1320548Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zttrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
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
ш
ztrace_02╦
.__inference_FlattenUsers_layer_call_fn_1320553Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zztrace_0
Г
{trace_02ц
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_1320559Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z{trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
о
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
Аlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
ф
Бtrace_02┼
(__inference_Concat_layer_call_fn_1320565Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zБtrace_0
 
Вtrace_02р
C__inference_Concat_layer_call_and_return_conditional_losses_1320572Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zВtrace_0
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
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
ю
Иtrace_02╧
2__inference_FullyConnected-1_layer_call_fn_1320581Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zИtrace_0
Й
Йtrace_02ъ
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_1320592Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЙtrace_0
):'22FullyConnected-1/kernel
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
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
ш
Пtrace_02╔
,__inference_Activation_layer_call_fn_1320601Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zПtrace_0
Г
Рtrace_02ф
G__inference_Activation_layer_call_and_return_conditional_losses_1320612Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zРtrace_0
#:!22Activation/kernel
:2Activation/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
═
Цtrace_0
Чtrace_12Т
+__inference_lambda_13_layer_call_fn_1320617
+__inference_lambda_13_layer_call_fn_1320622╡
о▓к
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsв

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЦtrace_0zЧtrace_1
Г
Шtrace_0
Щtrace_12╚
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320630
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320638╡
о▓к
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsв

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zШtrace_0zЩtrace_1
╨
Ъtrace_02▒
__inference_loss_fn_0_1320647П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в zЪtrace_0
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
Ы0
Ь1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
їBЄ
*__inference_model_13_layer_call_fn_1320190UserItem"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
*__inference_model_13_layer_call_fn_1320237UserItem"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
*__inference_model_13_layer_call_fn_1320391inputs_0inputs_1"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
*__inference_model_13_layer_call_fn_1320409inputs_0inputs_1"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
E__inference_model_13_layer_call_and_return_conditional_losses_1320105UserItem"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
E__inference_model_13_layer_call_and_return_conditional_losses_1320142UserItem"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
E__inference_model_13_layer_call_and_return_conditional_losses_1320454inputs_0inputs_1"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
E__inference_model_13_layer_call_and_return_conditional_losses_1320499inputs_0inputs_1"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
═B╩
%__inference_signature_wrapper_1320369ItemUser"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
█B╪
1__inference_Movie-Embedding_layer_call_fn_1320506inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЎBє
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_1320520inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
0__inference_User-Embedding_layer_call_fn_1320527inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_User-Embedding_layer_call_and_return_conditional_losses_1320537inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┘B╓
/__inference_FlattenMovies_layer_call_fn_1320542inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_1320548inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╪B╒
.__inference_FlattenUsers_layer_call_fn_1320553inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_1320559inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▐B█
(__inference_Concat_layer_call_fn_1320565inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
C__inference_Concat_layer_call_and_return_conditional_losses_1320572inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▄B┘
2__inference_FullyConnected-1_layer_call_fn_1320581inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_1320592inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╓B╙
,__inference_Activation_layer_call_fn_1320601inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ёBю
G__inference_Activation_layer_call_and_return_conditional_losses_1320612inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
ЄBя
+__inference_lambda_13_layer_call_fn_1320617inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsв

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
+__inference_lambda_13_layer_call_fn_1320622inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsв

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320630inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsв

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320638inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsв

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┤B▒
__inference_loss_fn_0_1320647"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
R
Э	variables
Ю	keras_api

Яtotal

аcount"
_tf_keras_metric
c
б	variables
в	keras_api

гtotal

дcount
е
_fn_kwargs"
_tf_keras_metric
0
Я0
а1"
trackable_list_wrapper
.
Э	variables"
_generic_user_object
:  (2total
:  (2count
0
г0
д1"
trackable_list_wrapper
.
б	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
2:0	У2!Adam/Movie-Embedding/embeddings/m
1:/	░2 Adam/User-Embedding/embeddings/m
.:,22Adam/FullyConnected-1/kernel/m
(:&22Adam/FullyConnected-1/bias/m
(:&22Adam/Activation/kernel/m
": 2Adam/Activation/bias/m
2:0	У2!Adam/Movie-Embedding/embeddings/v
1:/	░2 Adam/User-Embedding/embeddings/v
.:,22Adam/FullyConnected-1/kernel/v
(:&22Adam/FullyConnected-1/bias/v
(:&22Adam/Activation/kernel/v
": 2Adam/Activation/bias/vо
G__inference_Activation_layer_call_and_return_conditional_losses_1320612cDE/в,
%в"
 К
inputs         2
к ",в)
"К
tensor_0         
Ъ И
,__inference_Activation_layer_call_fn_1320601XDE/в,
%в"
 К
inputs         2
к "!К
unknown         ╥
C__inference_Concat_layer_call_and_return_conditional_losses_1320572КZвW
PвM
KЪH
"К
inputs_0         
"К
inputs_1         
к ",в)
"К
tensor_0         
Ъ л
(__inference_Concat_layer_call_fn_1320565ZвW
PвM
KЪH
"К
inputs_0         
"К
inputs_1         
к "!К
unknown         ▒
J__inference_FlattenMovies_layer_call_and_return_conditional_losses_1320548c3в0
)в&
$К!
inputs         
к ",в)
"К
tensor_0         
Ъ Л
/__inference_FlattenMovies_layer_call_fn_1320542X3в0
)в&
$К!
inputs         
к "!К
unknown         ░
I__inference_FlattenUsers_layer_call_and_return_conditional_losses_1320559c3в0
)в&
$К!
inputs         
к ",в)
"К
tensor_0         
Ъ К
.__inference_FlattenUsers_layer_call_fn_1320553X3в0
)в&
$К!
inputs         
к "!К
unknown         ┤
M__inference_FullyConnected-1_layer_call_and_return_conditional_losses_1320592c<=/в,
%в"
 К
inputs         
к ",в)
"К
tensor_0         2
Ъ О
2__inference_FullyConnected-1_layer_call_fn_1320581X<=/в,
%в"
 К
inputs         
к "!К
unknown         2╢
L__inference_Movie-Embedding_layer_call_and_return_conditional_losses_1320520f/в,
%в"
 К
inputs         
к "0в-
&К#
tensor_0         
Ъ Р
1__inference_Movie-Embedding_layer_call_fn_1320506[/в,
%в"
 К
inputs         
к "%К"
unknown         ╡
K__inference_User-Embedding_layer_call_and_return_conditional_losses_1320537f#/в,
%в"
 К
inputs         
к "0в-
&К#
tensor_0         
Ъ П
0__inference_User-Embedding_layer_call_fn_1320527[#/в,
%в"
 К
inputs         
к "%К"
unknown         ║
"__inference__wrapped_model_1319994У#<=DERвO
HвE
CЪ@
К
User         
К
Item         
к "5к2
0
	lambda_13#К 
	lambda_13         ▒
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320630g7в4
-в*
 К
inputs         

 
p
к ",в)
"К
tensor_0         
Ъ ▒
F__inference_lambda_13_layer_call_and_return_conditional_losses_1320638g7в4
-в*
 К
inputs         

 
p 
к ",в)
"К
tensor_0         
Ъ Л
+__inference_lambda_13_layer_call_fn_1320617\7в4
-в*
 К
inputs         

 
p
к "!К
unknown         Л
+__inference_lambda_13_layer_call_fn_1320622\7в4
-в*
 К
inputs         

 
p 
к "!К
unknown         E
__inference_loss_fn_0_1320647$в

в 
к "К
unknown ▄
E__inference_model_13_layer_call_and_return_conditional_losses_1320105Т#<=DEZвW
PвM
CЪ@
К
User         
К
Item         
p

 
к ",в)
"К
tensor_0         
Ъ ▄
E__inference_model_13_layer_call_and_return_conditional_losses_1320142Т#<=DEZвW
PвM
CЪ@
К
User         
К
Item         
p 

 
к ",в)
"К
tensor_0         
Ъ ф
E__inference_model_13_layer_call_and_return_conditional_losses_1320454Ъ#<=DEbв_
XвU
KЪH
"К
inputs_0         
"К
inputs_1         
p

 
к ",в)
"К
tensor_0         
Ъ ф
E__inference_model_13_layer_call_and_return_conditional_losses_1320499Ъ#<=DEbв_
XвU
KЪH
"К
inputs_0         
"К
inputs_1         
p 

 
к ",в)
"К
tensor_0         
Ъ ╢
*__inference_model_13_layer_call_fn_1320190З#<=DEZвW
PвM
CЪ@
К
User         
К
Item         
p

 
к "!К
unknown         ╢
*__inference_model_13_layer_call_fn_1320237З#<=DEZвW
PвM
CЪ@
К
User         
К
Item         
p 

 
к "!К
unknown         ╛
*__inference_model_13_layer_call_fn_1320391П#<=DEbв_
XвU
KЪH
"К
inputs_0         
"К
inputs_1         
p

 
к "!К
unknown         ╛
*__inference_model_13_layer_call_fn_1320409П#<=DEbв_
XвU
KЪH
"К
inputs_0         
"К
inputs_1         
p 

 
к "!К
unknown         ╚
%__inference_signature_wrapper_1320369Ю#<=DE]вZ
в 
SкP
&
ItemК
item         
&
UserК
user         "5к2
0
	lambda_13#К 
	lambda_13         