��
��
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
p
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2	"
adj_xbool( "
adj_ybool( 
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
Adam/movie_biases/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*/
shared_name Adam/movie_biases/embeddings/v
�
2Adam/movie_biases/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/movie_biases/embeddings/v*
_output_shapes
:	�*
dtype0
�
Adam/user_biases/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_nameAdam/user_biases/embeddings/v
�
1Adam/user_biases/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/user_biases/embeddings/v*
_output_shapes
:	�*
dtype0
�
 Adam/User-Embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*1
shared_name" Adam/User-Embedding/embeddings/v
�
4Adam/User-Embedding/embeddings/v/Read/ReadVariableOpReadVariableOp Adam/User-Embedding/embeddings/v*
_output_shapes
:	�*
dtype0
�
!Adam/Movie-Embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*2
shared_name#!Adam/Movie-Embedding/embeddings/v
�
5Adam/Movie-Embedding/embeddings/v/Read/ReadVariableOpReadVariableOp!Adam/Movie-Embedding/embeddings/v*
_output_shapes
:	�*
dtype0
�
Adam/movie_biases/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*/
shared_name Adam/movie_biases/embeddings/m
�
2Adam/movie_biases/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/movie_biases/embeddings/m*
_output_shapes
:	�*
dtype0
�
Adam/user_biases/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_nameAdam/user_biases/embeddings/m
�
1Adam/user_biases/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/user_biases/embeddings/m*
_output_shapes
:	�*
dtype0
�
 Adam/User-Embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*1
shared_name" Adam/User-Embedding/embeddings/m
�
4Adam/User-Embedding/embeddings/m/Read/ReadVariableOpReadVariableOp Adam/User-Embedding/embeddings/m*
_output_shapes
:	�*
dtype0
�
!Adam/Movie-Embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*2
shared_name#!Adam/Movie-Embedding/embeddings/m
�
5Adam/Movie-Embedding/embeddings/m/Read/ReadVariableOpReadVariableOp!Adam/Movie-Embedding/embeddings/m*
_output_shapes
:	�*
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
�
movie_biases/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_namemovie_biases/embeddings
�
+movie_biases/embeddings/Read/ReadVariableOpReadVariableOpmovie_biases/embeddings*
_output_shapes
:	�*
dtype0
�
user_biases/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*'
shared_nameuser_biases/embeddings
�
*user_biases/embeddings/Read/ReadVariableOpReadVariableOpuser_biases/embeddings*
_output_shapes
:	�*
dtype0
�
User-Embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�**
shared_nameUser-Embedding/embeddings
�
-User-Embedding/embeddings/Read/ReadVariableOpReadVariableOpUser-Embedding/embeddings*
_output_shapes
:	�*
dtype0
�
Movie-Embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_nameMovie-Embedding/embeddings
�
.Movie-Embedding/embeddings/Read/ReadVariableOpReadVariableOpMovie-Embedding/embeddings*
_output_shapes
:	�*
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_Itemserving_default_UserUser-Embedding/embeddingsMovie-Embedding/embeddingsmovie_biases/embeddingsuser_biases/embeddings*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_409627

NoOpNoOp
�I
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�H
value�HB�H B�H
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*

_init_input_shape* 

_init_input_shape* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%
embeddings*
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses* 
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses* 
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
8
embeddings*
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?
embeddings*
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses* 
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses* 
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses* 
 
0
%1
82
?3*
 
0
%1
82
?3*

X0
Y1
Z2
[3* 
�
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
atrace_0
btrace_1
ctrace_2
dtrace_3* 
6
etrace_0
ftrace_1
gtrace_2
htrace_3* 
* 
�
iiter

jbeta_1

kbeta_2
	ldecay
mlearning_ratem�%m�8m�?m�v�%v�8v�?v�*

nserving_default* 
* 
* 

0*

0*
	
X0* 
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ttrace_0* 

utrace_0* 
nh
VARIABLE_VALUEMovie-Embedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

%0*

%0*
	
Y0* 
�
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

{trace_0* 

|trace_0* 
mg
VARIABLE_VALUEUser-Embedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 
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
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

80*

80*
	
Z0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
jd
VARIABLE_VALUEuser_biases/embeddings:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

?0*

?0*
	
[0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
ke
VARIABLE_VALUEmovie_biases/embeddings:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 
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
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 
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
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 
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
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
Z
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
11*
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
	
X0* 
* 
* 
* 
* 
* 
* 
	
Y0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
Z0* 
* 
* 
* 
* 
* 
* 
	
[0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
VARIABLE_VALUEAdam/user_biases/embeddings/mVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/movie_biases/embeddings/mVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/Movie-Embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/User-Embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/user_biases/embeddings/vVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/movie_biases/embeddings/vVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameMovie-Embedding/embeddingsUser-Embedding/embeddingsuser_biases/embeddingsmovie_biases/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount!Adam/Movie-Embedding/embeddings/m Adam/User-Embedding/embeddings/mAdam/user_biases/embeddings/mAdam/movie_biases/embeddings/m!Adam/Movie-Embedding/embeddings/v Adam/User-Embedding/embeddings/vAdam/user_biases/embeddings/vAdam/movie_biases/embeddings/vConst*"
Tin
2*
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
__inference__traced_save_410142
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameMovie-Embedding/embeddingsUser-Embedding/embeddingsuser_biases/embeddingsmovie_biases/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount!Adam/Movie-Embedding/embeddings/m Adam/User-Embedding/embeddings/mAdam/user_biases/embeddings/mAdam/movie_biases/embeddings/m!Adam/Movie-Embedding/embeddings/v Adam/User-Embedding/embeddings/vAdam/user_biases/embeddings/vAdam/movie_biases/embeddings/v*!
Tin
2*
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
"__inference__traced_restore_410215��
�
J
.__inference_FlattenMovies_layer_call_fn_409842

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_409277`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
g
K__inference_user_biases_flt_layer_call_and_return_conditional_losses_409307

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_409859

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�^
�
"__inference__traced_restore_410215
file_prefix>
+assignvariableop_movie_embedding_embeddings:	�?
,assignvariableop_1_user_embedding_embeddings:	�<
)assignvariableop_2_user_biases_embeddings:	�=
*assignvariableop_3_movie_biases_embeddings:	�&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: $
assignvariableop_9_total_1: %
assignvariableop_10_count_1: #
assignvariableop_11_total: #
assignvariableop_12_count: H
5assignvariableop_13_adam_movie_embedding_embeddings_m:	�G
4assignvariableop_14_adam_user_embedding_embeddings_m:	�D
1assignvariableop_15_adam_user_biases_embeddings_m:	�E
2assignvariableop_16_adam_movie_biases_embeddings_m:	�H
5assignvariableop_17_adam_movie_embedding_embeddings_v:	�G
4assignvariableop_18_adam_user_embedding_embeddings_v:	�D
1assignvariableop_19_adam_user_biases_embeddings_v:	�E
2assignvariableop_20_adam_movie_biases_embeddings_v:	�
identity_22��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
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
AssignVariableOp_2AssignVariableOp)assignvariableop_2_user_biases_embeddingsIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp*assignvariableop_3_movie_biases_embeddingsIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp5assignvariableop_13_adam_movie_embedding_embeddings_mIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp4assignvariableop_14_adam_user_embedding_embeddings_mIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp1assignvariableop_15_adam_user_biases_embeddings_mIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp2assignvariableop_16_adam_movie_biases_embeddings_mIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp5assignvariableop_17_adam_movie_embedding_embeddings_vIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_user_embedding_embeddings_vIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp1assignvariableop_19_adam_user_biases_embeddings_vIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_movie_biases_embeddings_vIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202(
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
I
-__inference_FlattenUsers_layer_call_fn_409853

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_409285`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
`
&__inference_add_2_layer_call_fn_409948
inputs_0
inputs_1
inputs_2
identity�
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
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
GPU 2J 8� *J
fERC
A__inference_add_2_layer_call_and_return_conditional_losses_409325`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������:���������:���������:Q M
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
inputs_1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_2
�8
�
!__inference__wrapped_model_409194
user
itemA
.model_2_user_embedding_embedding_lookup_409153:	�B
/model_2_movie_embedding_embedding_lookup_409159:	�?
,model_2_movie_biases_embedding_lookup_409165:	�>
+model_2_user_biases_embedding_lookup_409171:	�
identity��(model_2/Movie-Embedding/embedding_lookup�'model_2/User-Embedding/embedding_lookup�%model_2/movie_biases/embedding_lookup�$model_2/user_biases/embedding_lookupj
model_2/User-Embedding/CastCastuser*

DstT0*

SrcT0*'
_output_shapes
:����������
'model_2/User-Embedding/embedding_lookupResourceGather.model_2_user_embedding_embedding_lookup_409153model_2/User-Embedding/Cast:y:0*
Tindices0*A
_class7
53loc:@model_2/User-Embedding/embedding_lookup/409153*+
_output_shapes
:���������*
dtype0�
0model_2/User-Embedding/embedding_lookup/IdentityIdentity0model_2/User-Embedding/embedding_lookup:output:0*
T0*A
_class7
53loc:@model_2/User-Embedding/embedding_lookup/409153*+
_output_shapes
:����������
2model_2/User-Embedding/embedding_lookup/Identity_1Identity9model_2/User-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������k
model_2/Movie-Embedding/CastCastitem*

DstT0*

SrcT0*'
_output_shapes
:����������
(model_2/Movie-Embedding/embedding_lookupResourceGather/model_2_movie_embedding_embedding_lookup_409159 model_2/Movie-Embedding/Cast:y:0*
Tindices0*B
_class8
64loc:@model_2/Movie-Embedding/embedding_lookup/409159*+
_output_shapes
:���������*
dtype0�
1model_2/Movie-Embedding/embedding_lookup/IdentityIdentity1model_2/Movie-Embedding/embedding_lookup:output:0*
T0*B
_class8
64loc:@model_2/Movie-Embedding/embedding_lookup/409159*+
_output_shapes
:����������
3model_2/Movie-Embedding/embedding_lookup/Identity_1Identity:model_2/Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������h
model_2/movie_biases/CastCastitem*

DstT0*

SrcT0*'
_output_shapes
:����������
%model_2/movie_biases/embedding_lookupResourceGather,model_2_movie_biases_embedding_lookup_409165model_2/movie_biases/Cast:y:0*
Tindices0*?
_class5
31loc:@model_2/movie_biases/embedding_lookup/409165*+
_output_shapes
:���������*
dtype0�
.model_2/movie_biases/embedding_lookup/IdentityIdentity.model_2/movie_biases/embedding_lookup:output:0*
T0*?
_class5
31loc:@model_2/movie_biases/embedding_lookup/409165*+
_output_shapes
:����������
0model_2/movie_biases/embedding_lookup/Identity_1Identity7model_2/movie_biases/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������g
model_2/user_biases/CastCastuser*

DstT0*

SrcT0*'
_output_shapes
:����������
$model_2/user_biases/embedding_lookupResourceGather+model_2_user_biases_embedding_lookup_409171model_2/user_biases/Cast:y:0*
Tindices0*>
_class4
20loc:@model_2/user_biases/embedding_lookup/409171*+
_output_shapes
:���������*
dtype0�
-model_2/user_biases/embedding_lookup/IdentityIdentity-model_2/user_biases/embedding_lookup:output:0*
T0*>
_class4
20loc:@model_2/user_biases/embedding_lookup/409171*+
_output_shapes
:����������
/model_2/user_biases/embedding_lookup/Identity_1Identity6model_2/user_biases/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������l
model_2/FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_2/FlattenMovies/ReshapeReshape<model_2/Movie-Embedding/embedding_lookup/Identity_1:output:0$model_2/FlattenMovies/Const:output:0*
T0*'
_output_shapes
:���������k
model_2/FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_2/FlattenUsers/ReshapeReshape;model_2/User-Embedding/embedding_lookup/Identity_1:output:0#model_2/FlattenUsers/Const:output:0*
T0*'
_output_shapes
:���������c
!model_2/DotProduct/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
model_2/DotProduct/ExpandDims
ExpandDims&model_2/FlattenMovies/Reshape:output:0*model_2/DotProduct/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������e
#model_2/DotProduct/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
model_2/DotProduct/ExpandDims_1
ExpandDims%model_2/FlattenUsers/Reshape:output:0,model_2/DotProduct/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:����������
model_2/DotProduct/MatMulBatchMatMulV2&model_2/DotProduct/ExpandDims:output:0(model_2/DotProduct/ExpandDims_1:output:0*
T0*+
_output_shapes
:���������x
model_2/DotProduct/ShapeShape"model_2/DotProduct/MatMul:output:0*
T0*
_output_shapes
::���
model_2/DotProduct/SqueezeSqueeze"model_2/DotProduct/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
n
model_2/user_biases_flt/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_2/user_biases_flt/ReshapeReshape8model_2/user_biases/embedding_lookup/Identity_1:output:0&model_2/user_biases_flt/Const:output:0*
T0*'
_output_shapes
:���������o
model_2/movie_biases_flt/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
 model_2/movie_biases_flt/ReshapeReshape9model_2/movie_biases/embedding_lookup/Identity_1:output:0'model_2/movie_biases_flt/Const:output:0*
T0*'
_output_shapes
:����������
model_2/add_2/addAddV2#model_2/DotProduct/Squeeze:output:0(model_2/user_biases_flt/Reshape:output:0*
T0*'
_output_shapes
:����������
model_2/add_2/add_1AddV2model_2/add_2/add:z:0)model_2/movie_biases_flt/Reshape:output:0*
T0*'
_output_shapes
:���������f
IdentityIdentitymodel_2/add_2/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^model_2/Movie-Embedding/embedding_lookup(^model_2/User-Embedding/embedding_lookup&^model_2/movie_biases/embedding_lookup%^model_2/user_biases/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 2T
(model_2/Movie-Embedding/embedding_lookup(model_2/Movie-Embedding/embedding_lookup2R
'model_2/User-Embedding/embedding_lookup'model_2/User-Embedding/embedding_lookup2N
%model_2/movie_biases/embedding_lookup%model_2/movie_biases/embedding_lookup2L
$model_2/user_biases/embedding_lookup$model_2/user_biases/embedding_lookup:M I
'
_output_shapes
:���������

_user_specified_nameUser:MI
'
_output_shapes
:���������

_user_specified_nameItem
�
d
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_409285

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_user_biases_layer_call_and_return_conditional_losses_409267

inputs*
embedding_lookup_409257:	�
identity��embedding_lookup�8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_409257Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/409257*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/409257*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_409257*
_output_shapes
:	�*
dtype0�
)user_biases/embeddings/Regularizer/L2LossL2Loss@user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: m
(user_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
&user_biases/embeddings/Regularizer/mulMul1user_biases/embeddings/Regularizer/mul/x:output:02user_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^embedding_lookup9^user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2t
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�C
�
C__inference_model_2_layer_call_and_return_conditional_losses_409479

inputs
inputs_1(
user_embedding_409444:	�)
movie_embedding_409447:	�&
movie_biases_409450:	�%
user_biases_409453:	�
identity��'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�$movie_biases/StatefulPartitionedCall�9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp�#user_biases/StatefulPartitionedCall�8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_409444*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_User-Embedding_layer_call_and_return_conditional_losses_409213�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_409447*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_409231�
$movie_biases/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_biases_409450*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_movie_biases_layer_call_and_return_conditional_losses_409249�
#user_biases/StatefulPartitionedCallStatefulPartitionedCallinputsuser_biases_409453*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_user_biases_layer_call_and_return_conditional_losses_409267�
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_409277�
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_409285�
DotProduct/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
Tin
2*
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
GPU 2J 8� *O
fJRH
F__inference_DotProduct_layer_call_and_return_conditional_losses_409299�
user_biases_flt/PartitionedCallPartitionedCall,user_biases/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *T
fORM
K__inference_user_biases_flt_layer_call_and_return_conditional_losses_409307�
 movie_biases_flt/PartitionedCallPartitionedCall-movie_biases/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *U
fPRN
L__inference_movie_biases_flt_layer_call_and_return_conditional_losses_409315�
add_2/PartitionedCallPartitionedCall#DotProduct/PartitionedCall:output:0(user_biases_flt/PartitionedCall:output:0)movie_biases_flt/PartitionedCall:output:0*
Tin
2*
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
GPU 2J 8� *J
fERC
A__inference_add_2_layer_call_and_return_conditional_losses_409325�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_409447*
_output_shapes
:	�*
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
: �
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_embedding_409444*
_output_shapes
:	�*
dtype0�
,User-Embedding/embeddings/Regularizer/L2LossL2LossCUser-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+User-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
)User-Embedding/embeddings/Regularizer/mulMul4User-Embedding/embeddings/Regularizer/mul/x:output:05User-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_biases_409453*
_output_shapes
:	�*
dtype0�
)user_biases/embeddings/Regularizer/L2LossL2Loss@user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: m
(user_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
&user_biases/embeddings/Regularizer/mulMul1user_biases/embeddings/Regularizer/mul/x:output:02user_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_biases_409450*
_output_shapes
:	�*
dtype0�
*movie_biases/embeddings/Regularizer/L2LossL2LossAmovie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)movie_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'movie_biases/embeddings/Regularizer/mulMul2movie_biases/embeddings/Regularizer/mul/x:output:03movie_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentityadd_2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall<^User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp%^movie_biases/StatefulPartitionedCall:^movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp$^user_biases/StatefulPartitionedCall9^user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 2R
'Movie-Embedding/StatefulPartitionedCall'Movie-Embedding/StatefulPartitionedCall2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&User-Embedding/StatefulPartitionedCall&User-Embedding/StatefulPartitionedCall2z
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2L
$movie_biases/StatefulPartitionedCall$movie_biases/StatefulPartitionedCall2v
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp2J
#user_biases/StatefulPartitionedCall#user_biases/StatefulPartitionedCall2t
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
y
A__inference_add_2_layer_call_and_return_conditional_losses_409325

inputs
inputs_1
inputs_2
identityP
addAddV2inputsinputs_1*
T0*'
_output_shapes
:���������S
add_1AddV2add:z:0inputs_2*
T0*'
_output_shapes
:���������Q
IdentityIdentity	add_1:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������:���������:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
M
1__inference_movie_biases_flt_layer_call_fn_409935

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
GPU 2J 8� *U
fPRN
L__inference_movie_biases_flt_layer_call_and_return_conditional_losses_409315`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
__inference__traced_save_410142
file_prefixD
1read_disablecopyonread_movie_embedding_embeddings:	�E
2read_1_disablecopyonread_user_embedding_embeddings:	�B
/read_2_disablecopyonread_user_biases_embeddings:	�C
0read_3_disablecopyonread_movie_biases_embeddings:	�,
"read_4_disablecopyonread_adam_iter:	 .
$read_5_disablecopyonread_adam_beta_1: .
$read_6_disablecopyonread_adam_beta_2: -
#read_7_disablecopyonread_adam_decay: 5
+read_8_disablecopyonread_adam_learning_rate: *
 read_9_disablecopyonread_total_1: +
!read_10_disablecopyonread_count_1: )
read_11_disablecopyonread_total: )
read_12_disablecopyonread_count: N
;read_13_disablecopyonread_adam_movie_embedding_embeddings_m:	�M
:read_14_disablecopyonread_adam_user_embedding_embeddings_m:	�J
7read_15_disablecopyonread_adam_user_biases_embeddings_m:	�K
8read_16_disablecopyonread_adam_movie_biases_embeddings_m:	�N
;read_17_disablecopyonread_adam_movie_embedding_embeddings_v:	�M
:read_18_disablecopyonread_adam_user_embedding_embeddings_v:	�J
7read_19_disablecopyonread_adam_user_biases_embeddings_v:	�K
8read_20_disablecopyonread_adam_movie_biases_embeddings_v:	�
savev2_const
identity_43��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
:	�*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_1/DisableCopyOnReadDisableCopyOnRead2read_1_disablecopyonread_user_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp2read_1_disablecopyonread_user_embedding_embeddings^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_2/DisableCopyOnReadDisableCopyOnRead/read_2_disablecopyonread_user_biases_embeddings"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp/read_2_disablecopyonread_user_biases_embeddings^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_3/DisableCopyOnReadDisableCopyOnRead0read_3_disablecopyonread_movie_biases_embeddings"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp0read_3_disablecopyonread_movie_biases_embeddings^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:	�v
Read_4/DisableCopyOnReadDisableCopyOnRead"read_4_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp"read_4_disablecopyonread_adam_iter^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	e

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: [

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0	*
_output_shapes
: x
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_adam_beta_1^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_adam_beta_2^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: w
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_adam_decay^Read_7/DisableCopyOnRead"/device:CPU:0*
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
: 
Read_8/DisableCopyOnReadDisableCopyOnRead+read_8_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp+read_8_disablecopyonread_adam_learning_rate^Read_8/DisableCopyOnRead"/device:CPU:0*
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
: t
Read_9/DisableCopyOnReadDisableCopyOnRead read_9_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp read_9_disablecopyonread_total_1^Read_9/DisableCopyOnRead"/device:CPU:0*
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
: v
Read_10/DisableCopyOnReadDisableCopyOnRead!read_10_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp!read_10_disablecopyonread_count_1^Read_10/DisableCopyOnRead"/device:CPU:0*
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
: t
Read_11/DisableCopyOnReadDisableCopyOnReadread_11_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOpread_11_disablecopyonread_total^Read_11/DisableCopyOnRead"/device:CPU:0*
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
: t
Read_12/DisableCopyOnReadDisableCopyOnReadread_12_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOpread_12_disablecopyonread_count^Read_12/DisableCopyOnRead"/device:CPU:0*
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
: �
Read_13/DisableCopyOnReadDisableCopyOnRead;read_13_disablecopyonread_adam_movie_embedding_embeddings_m"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp;read_13_disablecopyonread_adam_movie_embedding_embeddings_m^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_14/DisableCopyOnReadDisableCopyOnRead:read_14_disablecopyonread_adam_user_embedding_embeddings_m"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp:read_14_disablecopyonread_adam_user_embedding_embeddings_m^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_15/DisableCopyOnReadDisableCopyOnRead7read_15_disablecopyonread_adam_user_biases_embeddings_m"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp7read_15_disablecopyonread_adam_user_biases_embeddings_m^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_16/DisableCopyOnReadDisableCopyOnRead8read_16_disablecopyonread_adam_movie_biases_embeddings_m"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp8read_16_disablecopyonread_adam_movie_biases_embeddings_m^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_17/DisableCopyOnReadDisableCopyOnRead;read_17_disablecopyonread_adam_movie_embedding_embeddings_v"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp;read_17_disablecopyonread_adam_movie_embedding_embeddings_v^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_18/DisableCopyOnReadDisableCopyOnRead:read_18_disablecopyonread_adam_user_embedding_embeddings_v"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp:read_18_disablecopyonread_adam_user_embedding_embeddings_v^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_19/DisableCopyOnReadDisableCopyOnRead7read_19_disablecopyonread_adam_user_biases_embeddings_v"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp7read_19_disablecopyonread_adam_user_biases_embeddings_v^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_20/DisableCopyOnReadDisableCopyOnRead8read_20_disablecopyonread_adam_movie_biases_embeddings_v"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp8read_20_disablecopyonread_adam_movie_biases_embeddings_v^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *$
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_42Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_43IdentityIdentity_42:output:0^NoOp*
T0*
_output_shapes
: �	
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_43Identity_43:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_20/ReadVariableOpRead_20/ReadVariableOp24
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
_user_specified_namefile_prefix:

_output_shapes
: 
�
g
K__inference_user_biases_flt_layer_call_and_return_conditional_losses_409930

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_user_biases_layer_call_and_return_conditional_losses_409880

inputs*
embedding_lookup_409870:	�
identity��embedding_lookup�8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_409870Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/409870*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/409870*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_409870*
_output_shapes
:	�*
dtype0�
)user_biases/embeddings/Regularizer/L2LossL2Loss@user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: m
(user_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
&user_biases/embeddings/Regularizer/mulMul1user_biases/embeddings/Regularizer/mul/x:output:02user_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^embedding_lookup9^user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2t
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_user_biases_layer_call_fn_409866

inputs
unknown:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_user_biases_layer_call_and_return_conditional_losses_409267s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
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
�
�
J__inference_User-Embedding_layer_call_and_return_conditional_losses_409837

inputs*
embedding_lookup_409827:	�
identity��;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_409827Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/409827*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/409827*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_409827*
_output_shapes
:	�*
dtype0�
,User-Embedding/embeddings/Regularizer/L2LossL2LossCUser-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+User-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
)User-Embedding/embeddings/Regularizer/mulMul4User-Embedding/embeddings/Regularizer/mul/x:output:05User-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp<^User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2z
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
(__inference_model_2_layer_call_fn_409657
inputs_0
inputs_1
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_409426o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 22
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
�
�
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_409816

inputs*
embedding_lookup_409806:	�
identity��<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_409806Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/409806*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/409806*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_409806*
_output_shapes
:	�*
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
:����������
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
�
e
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_409848

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�M
�
C__inference_model_2_layer_call_and_return_conditional_losses_409795
inputs_0
inputs_19
&user_embedding_embedding_lookup_409738:	�:
'movie_embedding_embedding_lookup_409744:	�7
$movie_biases_embedding_lookup_409750:	�6
#user_biases_embedding_lookup_409756:	�
identity�� Movie-Embedding/embedding_lookup�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�User-Embedding/embedding_lookup�;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�movie_biases/embedding_lookup�9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp�user_biases/embedding_lookup�8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOpf
User-Embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
User-Embedding/embedding_lookupResourceGather&user_embedding_embedding_lookup_409738User-Embedding/Cast:y:0*
Tindices0*9
_class/
-+loc:@User-Embedding/embedding_lookup/409738*+
_output_shapes
:���������*
dtype0�
(User-Embedding/embedding_lookup/IdentityIdentity(User-Embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@User-Embedding/embedding_lookup/409738*+
_output_shapes
:����������
*User-Embedding/embedding_lookup/Identity_1Identity1User-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������g
Movie-Embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:����������
 Movie-Embedding/embedding_lookupResourceGather'movie_embedding_embedding_lookup_409744Movie-Embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@Movie-Embedding/embedding_lookup/409744*+
_output_shapes
:���������*
dtype0�
)Movie-Embedding/embedding_lookup/IdentityIdentity)Movie-Embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@Movie-Embedding/embedding_lookup/409744*+
_output_shapes
:����������
+Movie-Embedding/embedding_lookup/Identity_1Identity2Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������d
movie_biases/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:����������
movie_biases/embedding_lookupResourceGather$movie_biases_embedding_lookup_409750movie_biases/Cast:y:0*
Tindices0*7
_class-
+)loc:@movie_biases/embedding_lookup/409750*+
_output_shapes
:���������*
dtype0�
&movie_biases/embedding_lookup/IdentityIdentity&movie_biases/embedding_lookup:output:0*
T0*7
_class-
+)loc:@movie_biases/embedding_lookup/409750*+
_output_shapes
:����������
(movie_biases/embedding_lookup/Identity_1Identity/movie_biases/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������c
user_biases/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
user_biases/embedding_lookupResourceGather#user_biases_embedding_lookup_409756user_biases/Cast:y:0*
Tindices0*6
_class,
*(loc:@user_biases/embedding_lookup/409756*+
_output_shapes
:���������*
dtype0�
%user_biases/embedding_lookup/IdentityIdentity%user_biases/embedding_lookup:output:0*
T0*6
_class,
*(loc:@user_biases/embedding_lookup/409756*+
_output_shapes
:����������
'user_biases/embedding_lookup/Identity_1Identity.user_biases/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������d
FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
FlattenMovies/ReshapeReshape4Movie-Embedding/embedding_lookup/Identity_1:output:0FlattenMovies/Const:output:0*
T0*'
_output_shapes
:���������c
FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
FlattenUsers/ReshapeReshape3User-Embedding/embedding_lookup/Identity_1:output:0FlattenUsers/Const:output:0*
T0*'
_output_shapes
:���������[
DotProduct/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
DotProduct/ExpandDims
ExpandDimsFlattenMovies/Reshape:output:0"DotProduct/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������]
DotProduct/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
DotProduct/ExpandDims_1
ExpandDimsFlattenUsers/Reshape:output:0$DotProduct/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:����������
DotProduct/MatMulBatchMatMulV2DotProduct/ExpandDims:output:0 DotProduct/ExpandDims_1:output:0*
T0*+
_output_shapes
:���������h
DotProduct/ShapeShapeDotProduct/MatMul:output:0*
T0*
_output_shapes
::���
DotProduct/SqueezeSqueezeDotProduct/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
f
user_biases_flt/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
user_biases_flt/ReshapeReshape0user_biases/embedding_lookup/Identity_1:output:0user_biases_flt/Const:output:0*
T0*'
_output_shapes
:���������g
movie_biases_flt/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
movie_biases_flt/ReshapeReshape1movie_biases/embedding_lookup/Identity_1:output:0movie_biases_flt/Const:output:0*
T0*'
_output_shapes
:����������
	add_2/addAddV2DotProduct/Squeeze:output:0 user_biases_flt/Reshape:output:0*
T0*'
_output_shapes
:���������x
add_2/add_1AddV2add_2/add:z:0!movie_biases_flt/Reshape:output:0*
T0*'
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp'movie_embedding_embedding_lookup_409744*
_output_shapes
:	�*
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
: �
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp&user_embedding_embedding_lookup_409738*
_output_shapes
:	�*
dtype0�
,User-Embedding/embeddings/Regularizer/L2LossL2LossCUser-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+User-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
)User-Embedding/embeddings/Regularizer/mulMul4User-Embedding/embeddings/Regularizer/mul/x:output:05User-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp#user_biases_embedding_lookup_409756*
_output_shapes
:	�*
dtype0�
)user_biases/embeddings/Regularizer/L2LossL2Loss@user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: m
(user_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
&user_biases/embeddings/Regularizer/mulMul1user_biases/embeddings/Regularizer/mul/x:output:02user_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp$movie_biases_embedding_lookup_409750*
_output_shapes
:	�*
dtype0�
*movie_biases/embeddings/Regularizer/L2LossL2LossAmovie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)movie_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'movie_biases/embeddings/Regularizer/mulMul2movie_biases/embeddings/Regularizer/mul/x:output:03movie_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: ^
IdentityIdentityadd_2/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^Movie-Embedding/embedding_lookup=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp ^User-Embedding/embedding_lookup<^User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp^movie_biases/embedding_lookup:^movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp^user_biases/embedding_lookup9^user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 2D
 Movie-Embedding/embedding_lookup Movie-Embedding/embedding_lookup2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2B
User-Embedding/embedding_lookupUser-Embedding/embedding_lookup2z
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2>
movie_biases/embedding_lookupmovie_biases/embedding_lookup2v
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp2<
user_biases/embedding_lookupuser_biases/embedding_lookup2t
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:Q M
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
�
�
H__inference_movie_biases_layer_call_and_return_conditional_losses_409249

inputs*
embedding_lookup_409239:	�
identity��embedding_lookup�9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_409239Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/409239*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/409239*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_409239*
_output_shapes
:	�*
dtype0�
*movie_biases/embeddings/Regularizer/L2LossL2LossAmovie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)movie_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'movie_biases/embeddings/Regularizer/mulMul2movie_biases/embeddings/Regularizer/mul/x:output:03movie_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^embedding_lookup:^movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2v
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
L
0__inference_user_biases_flt_layer_call_fn_409924

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
GPU 2J 8� *T
fORM
K__inference_user_biases_flt_layer_call_and_return_conditional_losses_409307`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�B
�
C__inference_model_2_layer_call_and_return_conditional_losses_409344
user
item(
user_embedding_409214:	�)
movie_embedding_409232:	�&
movie_biases_409250:	�%
user_biases_409268:	�
identity��'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�$movie_biases/StatefulPartitionedCall�9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp�#user_biases/StatefulPartitionedCall�8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_409214*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_User-Embedding_layer_call_and_return_conditional_losses_409213�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallitemmovie_embedding_409232*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_409231�
$movie_biases/StatefulPartitionedCallStatefulPartitionedCallitemmovie_biases_409250*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_movie_biases_layer_call_and_return_conditional_losses_409249�
#user_biases/StatefulPartitionedCallStatefulPartitionedCalluseruser_biases_409268*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_user_biases_layer_call_and_return_conditional_losses_409267�
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_409277�
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_409285�
DotProduct/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
Tin
2*
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
GPU 2J 8� *O
fJRH
F__inference_DotProduct_layer_call_and_return_conditional_losses_409299�
user_biases_flt/PartitionedCallPartitionedCall,user_biases/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *T
fORM
K__inference_user_biases_flt_layer_call_and_return_conditional_losses_409307�
 movie_biases_flt/PartitionedCallPartitionedCall-movie_biases/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *U
fPRN
L__inference_movie_biases_flt_layer_call_and_return_conditional_losses_409315�
add_2/PartitionedCallPartitionedCall#DotProduct/PartitionedCall:output:0(user_biases_flt/PartitionedCall:output:0)movie_biases_flt/PartitionedCall:output:0*
Tin
2*
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
GPU 2J 8� *J
fERC
A__inference_add_2_layer_call_and_return_conditional_losses_409325�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_409232*
_output_shapes
:	�*
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
: �
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_embedding_409214*
_output_shapes
:	�*
dtype0�
,User-Embedding/embeddings/Regularizer/L2LossL2LossCUser-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+User-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
)User-Embedding/embeddings/Regularizer/mulMul4User-Embedding/embeddings/Regularizer/mul/x:output:05User-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_biases_409268*
_output_shapes
:	�*
dtype0�
)user_biases/embeddings/Regularizer/L2LossL2Loss@user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: m
(user_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
&user_biases/embeddings/Regularizer/mulMul1user_biases/embeddings/Regularizer/mul/x:output:02user_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_biases_409250*
_output_shapes
:	�*
dtype0�
*movie_biases/embeddings/Regularizer/L2LossL2LossAmovie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)movie_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'movie_biases/embeddings/Regularizer/mulMul2movie_biases/embeddings/Regularizer/mul/x:output:03movie_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentityadd_2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall<^User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp%^movie_biases/StatefulPartitionedCall:^movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp$^user_biases/StatefulPartitionedCall9^user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 2R
'Movie-Embedding/StatefulPartitionedCall'Movie-Embedding/StatefulPartitionedCall2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&User-Embedding/StatefulPartitionedCall&User-Embedding/StatefulPartitionedCall2z
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2L
$movie_biases/StatefulPartitionedCall$movie_biases/StatefulPartitionedCall2v
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp2J
#user_biases/StatefulPartitionedCall#user_biases/StatefulPartitionedCall2t
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:M I
'
_output_shapes
:���������

_user_specified_nameUser:MI
'
_output_shapes
:���������

_user_specified_nameItem
�C
�
C__inference_model_2_layer_call_and_return_conditional_losses_409426

inputs
inputs_1(
user_embedding_409391:	�)
movie_embedding_409394:	�&
movie_biases_409397:	�%
user_biases_409400:	�
identity��'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�$movie_biases/StatefulPartitionedCall�9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp�#user_biases/StatefulPartitionedCall�8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_409391*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_User-Embedding_layer_call_and_return_conditional_losses_409213�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_409394*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_409231�
$movie_biases/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_biases_409397*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_movie_biases_layer_call_and_return_conditional_losses_409249�
#user_biases/StatefulPartitionedCallStatefulPartitionedCallinputsuser_biases_409400*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_user_biases_layer_call_and_return_conditional_losses_409267�
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_409277�
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_409285�
DotProduct/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
Tin
2*
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
GPU 2J 8� *O
fJRH
F__inference_DotProduct_layer_call_and_return_conditional_losses_409299�
user_biases_flt/PartitionedCallPartitionedCall,user_biases/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *T
fORM
K__inference_user_biases_flt_layer_call_and_return_conditional_losses_409307�
 movie_biases_flt/PartitionedCallPartitionedCall-movie_biases/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *U
fPRN
L__inference_movie_biases_flt_layer_call_and_return_conditional_losses_409315�
add_2/PartitionedCallPartitionedCall#DotProduct/PartitionedCall:output:0(user_biases_flt/PartitionedCall:output:0)movie_biases_flt/PartitionedCall:output:0*
Tin
2*
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
GPU 2J 8� *J
fERC
A__inference_add_2_layer_call_and_return_conditional_losses_409325�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_409394*
_output_shapes
:	�*
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
: �
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_embedding_409391*
_output_shapes
:	�*
dtype0�
,User-Embedding/embeddings/Regularizer/L2LossL2LossCUser-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+User-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
)User-Embedding/embeddings/Regularizer/mulMul4User-Embedding/embeddings/Regularizer/mul/x:output:05User-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_biases_409400*
_output_shapes
:	�*
dtype0�
)user_biases/embeddings/Regularizer/L2LossL2Loss@user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: m
(user_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
&user_biases/embeddings/Regularizer/mulMul1user_biases/embeddings/Regularizer/mul/x:output:02user_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_biases_409397*
_output_shapes
:	�*
dtype0�
*movie_biases/embeddings/Regularizer/L2LossL2LossAmovie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)movie_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'movie_biases/embeddings/Regularizer/mulMul2movie_biases/embeddings/Regularizer/mul/x:output:03movie_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentityadd_2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall<^User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp%^movie_biases/StatefulPartitionedCall:^movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp$^user_biases/StatefulPartitionedCall9^user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 2R
'Movie-Embedding/StatefulPartitionedCall'Movie-Embedding/StatefulPartitionedCall2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&User-Embedding/StatefulPartitionedCall&User-Embedding/StatefulPartitionedCall2z
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2L
$movie_biases/StatefulPartitionedCall$movie_biases/StatefulPartitionedCall2v
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp2J
#user_biases/StatefulPartitionedCall#user_biases/StatefulPartitionedCall2t
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
h
L__inference_movie_biases_flt_layer_call_and_return_conditional_losses_409941

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_409627
item
user
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalluseritemunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_409194o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:���������

_user_specified_nameItem:MI
'
_output_shapes
:���������

_user_specified_nameUser
�
�
J__inference_User-Embedding_layer_call_and_return_conditional_losses_409213

inputs*
embedding_lookup_409203:	�
identity��;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_409203Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/409203*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/409203*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_409203*
_output_shapes
:	�*
dtype0�
,User-Embedding/embeddings/Regularizer/L2LossL2LossCUser-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+User-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
)User-Embedding/embeddings/Regularizer/mulMul4User-Embedding/embeddings/Regularizer/mul/x:output:05User-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp<^User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2z
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�M
�
C__inference_model_2_layer_call_and_return_conditional_losses_409733
inputs_0
inputs_19
&user_embedding_embedding_lookup_409676:	�:
'movie_embedding_embedding_lookup_409682:	�7
$movie_biases_embedding_lookup_409688:	�6
#user_biases_embedding_lookup_409694:	�
identity�� Movie-Embedding/embedding_lookup�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�User-Embedding/embedding_lookup�;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�movie_biases/embedding_lookup�9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp�user_biases/embedding_lookup�8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOpf
User-Embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
User-Embedding/embedding_lookupResourceGather&user_embedding_embedding_lookup_409676User-Embedding/Cast:y:0*
Tindices0*9
_class/
-+loc:@User-Embedding/embedding_lookup/409676*+
_output_shapes
:���������*
dtype0�
(User-Embedding/embedding_lookup/IdentityIdentity(User-Embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@User-Embedding/embedding_lookup/409676*+
_output_shapes
:����������
*User-Embedding/embedding_lookup/Identity_1Identity1User-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������g
Movie-Embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:����������
 Movie-Embedding/embedding_lookupResourceGather'movie_embedding_embedding_lookup_409682Movie-Embedding/Cast:y:0*
Tindices0*:
_class0
.,loc:@Movie-Embedding/embedding_lookup/409682*+
_output_shapes
:���������*
dtype0�
)Movie-Embedding/embedding_lookup/IdentityIdentity)Movie-Embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@Movie-Embedding/embedding_lookup/409682*+
_output_shapes
:����������
+Movie-Embedding/embedding_lookup/Identity_1Identity2Movie-Embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������d
movie_biases/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:����������
movie_biases/embedding_lookupResourceGather$movie_biases_embedding_lookup_409688movie_biases/Cast:y:0*
Tindices0*7
_class-
+)loc:@movie_biases/embedding_lookup/409688*+
_output_shapes
:���������*
dtype0�
&movie_biases/embedding_lookup/IdentityIdentity&movie_biases/embedding_lookup:output:0*
T0*7
_class-
+)loc:@movie_biases/embedding_lookup/409688*+
_output_shapes
:����������
(movie_biases/embedding_lookup/Identity_1Identity/movie_biases/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������c
user_biases/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
user_biases/embedding_lookupResourceGather#user_biases_embedding_lookup_409694user_biases/Cast:y:0*
Tindices0*6
_class,
*(loc:@user_biases/embedding_lookup/409694*+
_output_shapes
:���������*
dtype0�
%user_biases/embedding_lookup/IdentityIdentity%user_biases/embedding_lookup:output:0*
T0*6
_class,
*(loc:@user_biases/embedding_lookup/409694*+
_output_shapes
:����������
'user_biases/embedding_lookup/Identity_1Identity.user_biases/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������d
FlattenMovies/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
FlattenMovies/ReshapeReshape4Movie-Embedding/embedding_lookup/Identity_1:output:0FlattenMovies/Const:output:0*
T0*'
_output_shapes
:���������c
FlattenUsers/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
FlattenUsers/ReshapeReshape3User-Embedding/embedding_lookup/Identity_1:output:0FlattenUsers/Const:output:0*
T0*'
_output_shapes
:���������[
DotProduct/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
DotProduct/ExpandDims
ExpandDimsFlattenMovies/Reshape:output:0"DotProduct/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������]
DotProduct/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
DotProduct/ExpandDims_1
ExpandDimsFlattenUsers/Reshape:output:0$DotProduct/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:����������
DotProduct/MatMulBatchMatMulV2DotProduct/ExpandDims:output:0 DotProduct/ExpandDims_1:output:0*
T0*+
_output_shapes
:���������h
DotProduct/ShapeShapeDotProduct/MatMul:output:0*
T0*
_output_shapes
::���
DotProduct/SqueezeSqueezeDotProduct/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
f
user_biases_flt/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
user_biases_flt/ReshapeReshape0user_biases/embedding_lookup/Identity_1:output:0user_biases_flt/Const:output:0*
T0*'
_output_shapes
:���������g
movie_biases_flt/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
movie_biases_flt/ReshapeReshape1movie_biases/embedding_lookup/Identity_1:output:0movie_biases_flt/Const:output:0*
T0*'
_output_shapes
:����������
	add_2/addAddV2DotProduct/Squeeze:output:0 user_biases_flt/Reshape:output:0*
T0*'
_output_shapes
:���������x
add_2/add_1AddV2add_2/add:z:0!movie_biases_flt/Reshape:output:0*
T0*'
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp'movie_embedding_embedding_lookup_409682*
_output_shapes
:	�*
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
: �
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp&user_embedding_embedding_lookup_409676*
_output_shapes
:	�*
dtype0�
,User-Embedding/embeddings/Regularizer/L2LossL2LossCUser-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+User-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
)User-Embedding/embeddings/Regularizer/mulMul4User-Embedding/embeddings/Regularizer/mul/x:output:05User-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp#user_biases_embedding_lookup_409694*
_output_shapes
:	�*
dtype0�
)user_biases/embeddings/Regularizer/L2LossL2Loss@user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: m
(user_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
&user_biases/embeddings/Regularizer/mulMul1user_biases/embeddings/Regularizer/mul/x:output:02user_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp$movie_biases_embedding_lookup_409688*
_output_shapes
:	�*
dtype0�
*movie_biases/embeddings/Regularizer/L2LossL2LossAmovie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)movie_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'movie_biases/embeddings/Regularizer/mulMul2movie_biases/embeddings/Regularizer/mul/x:output:03movie_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: ^
IdentityIdentityadd_2/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^Movie-Embedding/embedding_lookup=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp ^User-Embedding/embedding_lookup<^User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp^movie_biases/embedding_lookup:^movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp^user_biases/embedding_lookup9^user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 2D
 Movie-Embedding/embedding_lookup Movie-Embedding/embedding_lookup2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2B
User-Embedding/embedding_lookupUser-Embedding/embedding_lookup2z
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2>
movie_biases/embedding_lookupmovie_biases/embedding_lookup2v
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp2<
user_biases/embedding_lookupuser_biases/embedding_lookup2t
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:Q M
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
r
F__inference_DotProduct_layer_call_and_return_conditional_losses_409919
inputs_0
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :q

ExpandDims
ExpandDimsinputs_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:���������y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:���������R
ShapeShapeMatMul:output:0*
T0*
_output_shapes
::��l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
�
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_409231

inputs*
embedding_lookup_409221:	�
identity��<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_409221Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/409221*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/409221*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_409221*
_output_shapes
:	�*
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
:����������
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
�
�
-__inference_movie_biases_layer_call_fn_409887

inputs
unknown:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_movie_biases_layer_call_and_return_conditional_losses_409249s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
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
�
�
/__inference_User-Embedding_layer_call_fn_409823

inputs
unknown:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_User-Embedding_layer_call_and_return_conditional_losses_409213s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
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

�
__inference_loss_fn_3_409992U
Bmovie_biases_embeddings_regularizer_l2loss_readvariableop_resource:	�
identity��9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp�
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpBmovie_biases_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*movie_biases/embeddings/Regularizer/L2LossL2LossAmovie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)movie_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'movie_biases/embeddings/Regularizer/mulMul2movie_biases/embeddings/Regularizer/mul/x:output:03movie_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentity+movie_biases/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp:^movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2v
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp
�
�
H__inference_movie_biases_layer_call_and_return_conditional_losses_409901

inputs*
embedding_lookup_409891:	�
identity��embedding_lookup�9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_409891Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/409891*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/409891*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_409891*
_output_shapes
:	�*
dtype0�
*movie_biases/embeddings/Regularizer/L2LossL2LossAmovie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)movie_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'movie_biases/embeddings/Regularizer/mulMul2movie_biases/embeddings/Regularizer/mul/x:output:03movie_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^embedding_lookup:^movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2v
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
__inference_loss_fn_0_409965X
Emovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource:	�
identity��<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpEmovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�*
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
�
W
+__inference_DotProduct_layer_call_fn_409907
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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_DotProduct_layer_call_and_return_conditional_losses_409299`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
{
A__inference_add_2_layer_call_and_return_conditional_losses_409956
inputs_0
inputs_1
inputs_2
identityR
addAddV2inputs_0inputs_1*
T0*'
_output_shapes
:���������S
add_1AddV2add:z:0inputs_2*
T0*'
_output_shapes
:���������Q
IdentityIdentity	add_1:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������:���������:���������:Q M
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
inputs_1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_2
�
�
0__inference_Movie-Embedding_layer_call_fn_409802

inputs
unknown:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_409231s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
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
�
(__inference_model_2_layer_call_fn_409437
user
item
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalluseritemunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_409426o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 22
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
p
F__inference_DotProduct_layer_call_and_return_conditional_losses_409299

inputs
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:���������R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:���������y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:���������R
ShapeShapeMatMul:output:0*
T0*
_output_shapes
::��l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_409277

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
__inference_loss_fn_2_409983T
Auser_biases_embeddings_regularizer_l2loss_readvariableop_resource:	�
identity��8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp�
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpAuser_biases_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�*
dtype0�
)user_biases/embeddings/Regularizer/L2LossL2Loss@user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: m
(user_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
&user_biases/embeddings/Regularizer/mulMul1user_biases/embeddings/Regularizer/mul/x:output:02user_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentity*user_biases/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp9^user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp
�

�
__inference_loss_fn_1_409974W
Duser_embedding_embeddings_regularizer_l2loss_readvariableop_resource:	�
identity��;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpDuser_embedding_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�*
dtype0�
,User-Embedding/embeddings/Regularizer/L2LossL2LossCUser-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+User-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
)User-Embedding/embeddings/Regularizer/mulMul4User-Embedding/embeddings/Regularizer/mul/x:output:05User-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: k
IdentityIdentity-User-Embedding/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp<^User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2z
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp
�	
�
(__inference_model_2_layer_call_fn_409490
user
item
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalluseritemunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_409479o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:���������

_user_specified_nameUser:MI
'
_output_shapes
:���������

_user_specified_nameItem
�
h
L__inference_movie_biases_flt_layer_call_and_return_conditional_losses_409315

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�B
�
C__inference_model_2_layer_call_and_return_conditional_losses_409383
user
item(
user_embedding_409348:	�)
movie_embedding_409351:	�&
movie_biases_409354:	�%
user_biases_409357:	�
identity��'Movie-Embedding/StatefulPartitionedCall�<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&User-Embedding/StatefulPartitionedCall�;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�$movie_biases/StatefulPartitionedCall�9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp�#user_biases/StatefulPartitionedCall�8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp�
&User-Embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_409348*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_User-Embedding_layer_call_and_return_conditional_losses_409213�
'Movie-Embedding/StatefulPartitionedCallStatefulPartitionedCallitemmovie_embedding_409351*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_409231�
$movie_biases/StatefulPartitionedCallStatefulPartitionedCallitemmovie_biases_409354*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_movie_biases_layer_call_and_return_conditional_losses_409249�
#user_biases/StatefulPartitionedCallStatefulPartitionedCalluseruser_biases_409357*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_user_biases_layer_call_and_return_conditional_losses_409267�
FlattenMovies/PartitionedCallPartitionedCall0Movie-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_409277�
FlattenUsers/PartitionedCallPartitionedCall/User-Embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_409285�
DotProduct/PartitionedCallPartitionedCall&FlattenMovies/PartitionedCall:output:0%FlattenUsers/PartitionedCall:output:0*
Tin
2*
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
GPU 2J 8� *O
fJRH
F__inference_DotProduct_layer_call_and_return_conditional_losses_409299�
user_biases_flt/PartitionedCallPartitionedCall,user_biases/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *T
fORM
K__inference_user_biases_flt_layer_call_and_return_conditional_losses_409307�
 movie_biases_flt/PartitionedCallPartitionedCall-movie_biases/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *U
fPRN
L__inference_movie_biases_flt_layer_call_and_return_conditional_losses_409315�
add_2/PartitionedCallPartitionedCall#DotProduct/PartitionedCall:output:0(user_biases_flt/PartitionedCall:output:0)movie_biases_flt/PartitionedCall:output:0*
Tin
2*
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
GPU 2J 8� *J
fERC
A__inference_add_2_layer_call_and_return_conditional_losses_409325�
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_409351*
_output_shapes
:	�*
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
: �
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_embedding_409348*
_output_shapes
:	�*
dtype0�
,User-Embedding/embeddings/Regularizer/L2LossL2LossCUser-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+User-Embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
)User-Embedding/embeddings/Regularizer/mulMul4User-Embedding/embeddings/Regularizer/mul/x:output:05User-Embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_biases_409357*
_output_shapes
:	�*
dtype0�
)user_biases/embeddings/Regularizer/L2LossL2Loss@user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: m
(user_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
&user_biases/embeddings/Regularizer/mulMul1user_biases/embeddings/Regularizer/mul/x:output:02user_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_biases_409354*
_output_shapes
:	�*
dtype0�
*movie_biases/embeddings/Regularizer/L2LossL2LossAmovie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)movie_biases/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'movie_biases/embeddings/Regularizer/mulMul2movie_biases/embeddings/Regularizer/mul/x:output:03movie_biases/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentityadd_2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^Movie-Embedding/StatefulPartitionedCall=^Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^User-Embedding/StatefulPartitionedCall<^User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp%^movie_biases/StatefulPartitionedCall:^movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp$^user_biases/StatefulPartitionedCall9^user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 2R
'Movie-Embedding/StatefulPartitionedCall'Movie-Embedding/StatefulPartitionedCall2|
<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<Movie-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&User-Embedding/StatefulPartitionedCall&User-Embedding/StatefulPartitionedCall2z
;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;User-Embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2L
$movie_biases/StatefulPartitionedCall$movie_biases/StatefulPartitionedCall2v
9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp9movie_biases/embeddings/Regularizer/L2Loss/ReadVariableOp2J
#user_biases/StatefulPartitionedCall#user_biases/StatefulPartitionedCall2t
8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp8user_biases/embeddings/Regularizer/L2Loss/ReadVariableOp:M I
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
(__inference_model_2_layer_call_fn_409671
inputs_0
inputs_1
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_409479o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 22
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
serving_default_User:0���������9
add_20
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
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
6
_init_input_shape"
_tf_keras_input_layer
6
_init_input_shape"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%
embeddings"
_tf_keras_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
8
embeddings"
_tf_keras_layer
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?
embeddings"
_tf_keras_layer
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses"
_tf_keras_layer
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
<
0
%1
82
?3"
trackable_list_wrapper
<
0
%1
82
?3"
trackable_list_wrapper
<
X0
Y1
Z2
[3"
trackable_list_wrapper
�
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
atrace_0
btrace_1
ctrace_2
dtrace_32�
(__inference_model_2_layer_call_fn_409437
(__inference_model_2_layer_call_fn_409490
(__inference_model_2_layer_call_fn_409657
(__inference_model_2_layer_call_fn_409671�
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
 zatrace_0zbtrace_1zctrace_2zdtrace_3
�
etrace_0
ftrace_1
gtrace_2
htrace_32�
C__inference_model_2_layer_call_and_return_conditional_losses_409344
C__inference_model_2_layer_call_and_return_conditional_losses_409383
C__inference_model_2_layer_call_and_return_conditional_losses_409733
C__inference_model_2_layer_call_and_return_conditional_losses_409795�
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
 zetrace_0zftrace_1zgtrace_2zhtrace_3
�B�
!__inference__wrapped_model_409194UserItem"�
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
iiter

jbeta_1

kbeta_2
	ldecay
mlearning_ratem�%m�8m�?m�v�%v�8v�?v�"
	optimizer
,
nserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
X0"
trackable_list_wrapper
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ttrace_02�
0__inference_Movie-Embedding_layer_call_fn_409802�
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
 zttrace_0
�
utrace_02�
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_409816�
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
 zutrace_0
-:+	�2Movie-Embedding/embeddings
'
%0"
trackable_list_wrapper
'
%0"
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
�
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�
{trace_02�
/__inference_User-Embedding_layer_call_fn_409823�
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
 z{trace_0
�
|trace_02�
J__inference_User-Embedding_layer_call_and_return_conditional_losses_409837�
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
 z|trace_0
,:*	�2User-Embedding/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_FlattenMovies_layer_call_fn_409842�
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
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_409848�
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
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_FlattenUsers_layer_call_fn_409853�
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
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_409859�
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
'
80"
trackable_list_wrapper
'
80"
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_user_biases_layer_call_fn_409866�
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
G__inference_user_biases_layer_call_and_return_conditional_losses_409880�
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
):'	�2user_biases/embeddings
'
?0"
trackable_list_wrapper
'
?0"
trackable_list_wrapper
'
[0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_movie_biases_layer_call_fn_409887�
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
H__inference_movie_biases_layer_call_and_return_conditional_losses_409901�
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
*:(	�2movie_biases/embeddings
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
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_DotProduct_layer_call_fn_409907�
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
F__inference_DotProduct_layer_call_and_return_conditional_losses_409919�
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
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_user_biases_flt_layer_call_fn_409924�
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
K__inference_user_biases_flt_layer_call_and_return_conditional_losses_409930�
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
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_movie_biases_flt_layer_call_fn_409935�
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
L__inference_movie_biases_flt_layer_call_and_return_conditional_losses_409941�
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
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_add_2_layer_call_fn_409948�
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
A__inference_add_2_layer_call_and_return_conditional_losses_409956�
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
__inference_loss_fn_0_409965�
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
�
�trace_02�
__inference_loss_fn_1_409974�
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
�
�trace_02�
__inference_loss_fn_2_409983�
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
�
�trace_02�
__inference_loss_fn_3_409992�
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
v
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
11"
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
(__inference_model_2_layer_call_fn_409437UserItem"�
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
(__inference_model_2_layer_call_fn_409490UserItem"�
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
(__inference_model_2_layer_call_fn_409657inputs_0inputs_1"�
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
(__inference_model_2_layer_call_fn_409671inputs_0inputs_1"�
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
C__inference_model_2_layer_call_and_return_conditional_losses_409344UserItem"�
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
C__inference_model_2_layer_call_and_return_conditional_losses_409383UserItem"�
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
C__inference_model_2_layer_call_and_return_conditional_losses_409733inputs_0inputs_1"�
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
C__inference_model_2_layer_call_and_return_conditional_losses_409795inputs_0inputs_1"�
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
$__inference_signature_wrapper_409627ItemUser"�
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
X0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_Movie-Embedding_layer_call_fn_409802inputs"�
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
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_409816inputs"�
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
'
Y0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_User-Embedding_layer_call_fn_409823inputs"�
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
J__inference_User-Embedding_layer_call_and_return_conditional_losses_409837inputs"�
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
.__inference_FlattenMovies_layer_call_fn_409842inputs"�
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
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_409848inputs"�
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
-__inference_FlattenUsers_layer_call_fn_409853inputs"�
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
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_409859inputs"�
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
'
Z0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_user_biases_layer_call_fn_409866inputs"�
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
G__inference_user_biases_layer_call_and_return_conditional_losses_409880inputs"�
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
'
[0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_movie_biases_layer_call_fn_409887inputs"�
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
H__inference_movie_biases_layer_call_and_return_conditional_losses_409901inputs"�
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
+__inference_DotProduct_layer_call_fn_409907inputs_0inputs_1"�
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
F__inference_DotProduct_layer_call_and_return_conditional_losses_409919inputs_0inputs_1"�
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
0__inference_user_biases_flt_layer_call_fn_409924inputs"�
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
K__inference_user_biases_flt_layer_call_and_return_conditional_losses_409930inputs"�
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
1__inference_movie_biases_flt_layer_call_fn_409935inputs"�
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
L__inference_movie_biases_flt_layer_call_and_return_conditional_losses_409941inputs"�
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
&__inference_add_2_layer_call_fn_409948inputs_0inputs_1inputs_2"�
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
�B�
A__inference_add_2_layer_call_and_return_conditional_losses_409956inputs_0inputs_1inputs_2"�
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
__inference_loss_fn_0_409965"�
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
�B�
__inference_loss_fn_1_409974"�
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
�B�
__inference_loss_fn_2_409983"�
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
�B�
__inference_loss_fn_3_409992"�
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
2:0	�2!Adam/Movie-Embedding/embeddings/m
1:/	�2 Adam/User-Embedding/embeddings/m
.:,	�2Adam/user_biases/embeddings/m
/:-	�2Adam/movie_biases/embeddings/m
2:0	�2!Adam/Movie-Embedding/embeddings/v
1:/	�2 Adam/User-Embedding/embeddings/v
.:,	�2Adam/user_biases/embeddings/v
/:-	�2Adam/movie_biases/embeddings/v�
F__inference_DotProduct_layer_call_and_return_conditional_losses_409919�Z�W
P�M
K�H
"�
inputs_0���������
"�
inputs_1���������
� ",�)
"�
tensor_0���������
� �
+__inference_DotProduct_layer_call_fn_409907Z�W
P�M
K�H
"�
inputs_0���������
"�
inputs_1���������
� "!�
unknown����������
I__inference_FlattenMovies_layer_call_and_return_conditional_losses_409848c3�0
)�&
$�!
inputs���������
� ",�)
"�
tensor_0���������
� �
.__inference_FlattenMovies_layer_call_fn_409842X3�0
)�&
$�!
inputs���������
� "!�
unknown����������
H__inference_FlattenUsers_layer_call_and_return_conditional_losses_409859c3�0
)�&
$�!
inputs���������
� ",�)
"�
tensor_0���������
� �
-__inference_FlattenUsers_layer_call_fn_409853X3�0
)�&
$�!
inputs���������
� "!�
unknown����������
K__inference_Movie-Embedding_layer_call_and_return_conditional_losses_409816f/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������
� �
0__inference_Movie-Embedding_layer_call_fn_409802[/�,
%�"
 �
inputs���������
� "%�"
unknown����������
J__inference_User-Embedding_layer_call_and_return_conditional_losses_409837f%/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������
� �
/__inference_User-Embedding_layer_call_fn_409823[%/�,
%�"
 �
inputs���������
� "%�"
unknown����������
!__inference__wrapped_model_409194�%?8R�O
H�E
C�@
�
User���������
�
Item���������
� "-�*
(
add_2�
add_2����������
A__inference_add_2_layer_call_and_return_conditional_losses_409956�~�{
t�q
o�l
"�
inputs_0���������
"�
inputs_1���������
"�
inputs_2���������
� ",�)
"�
tensor_0���������
� �
&__inference_add_2_layer_call_fn_409948�~�{
t�q
o�l
"�
inputs_0���������
"�
inputs_1���������
"�
inputs_2���������
� "!�
unknown���������D
__inference_loss_fn_0_409965$�

� 
� "�
unknown D
__inference_loss_fn_1_409974$%�

� 
� "�
unknown D
__inference_loss_fn_2_409983$8�

� 
� "�
unknown D
__inference_loss_fn_3_409992$?�

� 
� "�
unknown �
C__inference_model_2_layer_call_and_return_conditional_losses_409344�%?8Z�W
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
C__inference_model_2_layer_call_and_return_conditional_losses_409383�%?8Z�W
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
C__inference_model_2_layer_call_and_return_conditional_losses_409733�%?8b�_
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
C__inference_model_2_layer_call_and_return_conditional_losses_409795�%?8b�_
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
(__inference_model_2_layer_call_fn_409437�%?8Z�W
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
(__inference_model_2_layer_call_fn_409490�%?8Z�W
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
(__inference_model_2_layer_call_fn_409657�%?8b�_
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
(__inference_model_2_layer_call_fn_409671�%?8b�_
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
L__inference_movie_biases_flt_layer_call_and_return_conditional_losses_409941c3�0
)�&
$�!
inputs���������
� ",�)
"�
tensor_0���������
� �
1__inference_movie_biases_flt_layer_call_fn_409935X3�0
)�&
$�!
inputs���������
� "!�
unknown����������
H__inference_movie_biases_layer_call_and_return_conditional_losses_409901f?/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������
� �
-__inference_movie_biases_layer_call_fn_409887[?/�,
%�"
 �
inputs���������
� "%�"
unknown����������
$__inference_signature_wrapper_409627�%?8]�Z
� 
S�P
&
Item�
item���������
&
User�
user���������"-�*
(
add_2�
add_2����������
K__inference_user_biases_flt_layer_call_and_return_conditional_losses_409930c3�0
)�&
$�!
inputs���������
� ",�)
"�
tensor_0���������
� �
0__inference_user_biases_flt_layer_call_fn_409924X3�0
)�&
$�!
inputs���������
� "!�
unknown����������
G__inference_user_biases_layer_call_and_return_conditional_losses_409880f8/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������
� �
,__inference_user_biases_layer_call_fn_409866[8/�,
%�"
 �
inputs���������
� "%�"
unknown���������