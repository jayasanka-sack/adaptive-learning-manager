те
Мт
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
н
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
╛
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.02v2.4.0-0-g582c8d236cb8╢╔	
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:d*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
:d*
dtype0
z
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd* 
shared_namedense_21/kernel
s
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes

:dd*
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:d*
dtype0
z
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd* 
shared_namedense_22/kernel
s
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes

:dd*
dtype0
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
:d*
dtype0
|
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
аЬ* 
shared_namedense_23/kernel
u
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel* 
_output_shapes
:
аЬ*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
:*
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
И
Adam/dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_20/kernel/m
Б
*Adam/dense_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/m*
_output_shapes

:d*
dtype0
А
Adam/dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_20/bias/m
y
(Adam/dense_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/m*
_output_shapes
:d*
dtype0
И
Adam/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_21/kernel/m
Б
*Adam/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/m*
_output_shapes

:dd*
dtype0
А
Adam/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_21/bias/m
y
(Adam/dense_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/m*
_output_shapes
:d*
dtype0
И
Adam/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_22/kernel/m
Б
*Adam/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/m*
_output_shapes

:dd*
dtype0
А
Adam/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_22/bias/m
y
(Adam/dense_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/m*
_output_shapes
:d*
dtype0
К
Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
аЬ*'
shared_nameAdam/dense_23/kernel/m
Г
*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m* 
_output_shapes
:
аЬ*
dtype0
А
Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/m
y
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes
:*
dtype0
И
Adam/dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_20/kernel/v
Б
*Adam/dense_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/v*
_output_shapes

:d*
dtype0
А
Adam/dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_20/bias/v
y
(Adam/dense_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/v*
_output_shapes
:d*
dtype0
И
Adam/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_21/kernel/v
Б
*Adam/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/v*
_output_shapes

:dd*
dtype0
А
Adam/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_21/bias/v
y
(Adam/dense_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/v*
_output_shapes
:d*
dtype0
И
Adam/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_22/kernel/v
Б
*Adam/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/v*
_output_shapes

:dd*
dtype0
А
Adam/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_22/bias/v
y
(Adam/dense_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/v*
_output_shapes
:d*
dtype0
К
Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
аЬ*'
shared_nameAdam/dense_23/kernel/v
Г
*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v* 
_output_shapes
:
аЬ*
dtype0
А
Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/v
y
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
╬2
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Й2
value 1B№1 Bї1
з
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
	optimizer
regularization_losses
		variables

trainable_variables
	keras_api

signatures
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
 	variables
!trainable_variables
"	keras_api
R
#regularization_losses
$	variables
%trainable_variables
&	keras_api
h

'kernel
(bias
)regularization_losses
*	variables
+trainable_variables
,	keras_api
╨
-iter

.beta_1

/beta_2
	0decay
1learning_ratem`mambmcmdme'mf(mgvhvivjvkvlvm'vn(vo
 
8
0
1
2
3
4
5
'6
(7
8
0
1
2
3
4
5
'6
(7
н

2layers
regularization_losses
3non_trainable_variables
		variables

trainable_variables
4metrics
5layer_metrics
6layer_regularization_losses
 
 
 
 
н

7layers
regularization_losses
8non_trainable_variables
	variables
trainable_variables
9metrics
:layer_metrics
;layer_regularization_losses
[Y
VARIABLE_VALUEdense_20/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_20/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
н

<layers
regularization_losses
=non_trainable_variables
	variables
trainable_variables
>metrics
?layer_metrics
@layer_regularization_losses
[Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_21/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
н

Alayers
regularization_losses
Bnon_trainable_variables
	variables
trainable_variables
Cmetrics
Dlayer_metrics
Elayer_regularization_losses
[Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_22/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
н

Flayers
regularization_losses
Gnon_trainable_variables
 	variables
!trainable_variables
Hmetrics
Ilayer_metrics
Jlayer_regularization_losses
 
 
 
н

Klayers
#regularization_losses
Lnon_trainable_variables
$	variables
%trainable_variables
Mmetrics
Nlayer_metrics
Olayer_regularization_losses
[Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1

'0
(1
н

Players
)regularization_losses
Qnon_trainable_variables
*	variables
+trainable_variables
Rmetrics
Slayer_metrics
Tlayer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
*
0
1
2
3
4
5
 

U0
V1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Wtotal
	Xcount
Y	variables
Z	keras_api
D
	[total
	\count
]
_fn_kwargs
^	variables
_	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

W0
X1

Y	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

[0
\1

^	variables
~|
VARIABLE_VALUEAdam/dense_20/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_20/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_20/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_20/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Д
serving_default_reshape_6_inputPlaceholder*(
_output_shapes
:         ░	*
dtype0*
shape:         ░	
╔
StatefulPartitionedCallStatefulPartitionedCallserving_default_reshape_6_inputdense_20/kerneldense_20/biasdense_21/kerneldense_21/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_27556
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
д
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_20/kernel/m/Read/ReadVariableOp(Adam/dense_20/bias/m/Read/ReadVariableOp*Adam/dense_21/kernel/m/Read/ReadVariableOp(Adam/dense_21/bias/m/Read/ReadVariableOp*Adam/dense_22/kernel/m/Read/ReadVariableOp(Adam/dense_22/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp*Adam/dense_20/kernel/v/Read/ReadVariableOp(Adam/dense_20/bias/v/Read/ReadVariableOp*Adam/dense_21/kernel/v/Read/ReadVariableOp(Adam/dense_21/bias/v/Read/ReadVariableOp*Adam/dense_22/kernel/v/Read/ReadVariableOp(Adam/dense_22/bias/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_28095
Л
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_20/kerneldense_20/biasdense_21/kerneldense_21/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_20/kernel/mAdam/dense_20/bias/mAdam/dense_21/kernel/mAdam/dense_21/bias/mAdam/dense_22/kernel/mAdam/dense_22/bias/mAdam/dense_23/kernel/mAdam/dense_23/bias/mAdam/dense_20/kernel/vAdam/dense_20/bias/vAdam/dense_21/kernel/vAdam/dense_21/bias/vAdam/dense_22/kernel/vAdam/dense_22/bias/vAdam/dense_23/kernel/vAdam/dense_23/bias/v*-
Tin&
$2"*
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_28204Ю└
т
`
D__inference_reshape_6_layer_call_and_return_conditional_losses_27213

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :╚2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2а
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         ╚2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*'
_input_shapes
:         ░	:P L
(
_output_shapes
:         ░	
 
_user_specified_nameinputs
т
`
D__inference_reshape_6_layer_call_and_return_conditional_losses_27817

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :╚2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2а
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         ╚2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*'
_input_shapes
:         ░	:P L
(
_output_shapes
:         ░	
 
_user_specified_nameinputs
╟
Ы
G__inference_sequential_6_layer_call_and_return_conditional_losses_27404
reshape_6_input
dense_20_27263
dense_20_27265
dense_21_27310
dense_21_27312
dense_22_27357
dense_22_27359
dense_23_27398
dense_23_27400
identityИв dense_20/StatefulPartitionedCallв dense_21/StatefulPartitionedCallв dense_22/StatefulPartitionedCallв dense_23/StatefulPartitionedCallф
reshape_6/PartitionedCallPartitionedCallreshape_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_reshape_6_layer_call_and_return_conditional_losses_272132
reshape_6/PartitionedCall▓
 dense_20/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0dense_20_27263dense_20_27265*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_20_layer_call_and_return_conditional_losses_272522"
 dense_20/StatefulPartitionedCall╣
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_27310dense_21_27312*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_21_layer_call_and_return_conditional_losses_272992"
 dense_21/StatefulPartitionedCall╣
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_27357dense_22_27359*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_273462"
 dense_22/StatefulPartitionedCall√
flatten_5/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         аЬ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_5_layer_call_and_return_conditional_losses_273682
flatten_5/PartitionedCallн
 dense_23/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_23_27398dense_23_27400*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_273872"
 dense_23/StatefulPartitionedCallЙ
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         ░	::::::::2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:Y U
(
_output_shapes
:         ░	
)
_user_specified_namereshape_6_input
ёЕ
Ё
G__inference_sequential_6_layer_call_and_return_conditional_losses_27659

inputs.
*dense_20_tensordot_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource.
*dense_21_tensordot_readvariableop_resource,
(dense_21_biasadd_readvariableop_resource.
*dense_22_tensordot_readvariableop_resource,
(dense_22_biasadd_readvariableop_resource+
'dense_23_matmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource
identityИвdense_20/BiasAdd/ReadVariableOpв!dense_20/Tensordot/ReadVariableOpвdense_21/BiasAdd/ReadVariableOpв!dense_21/Tensordot/ReadVariableOpвdense_22/BiasAdd/ReadVariableOpв!dense_22/Tensordot/ReadVariableOpвdense_23/BiasAdd/ReadVariableOpвdense_23/MatMul/ReadVariableOpX
reshape_6/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape_6/ShapeИ
reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_6/strided_slice/stackМ
reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_1М
reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_2Ю
reshape_6/strided_sliceStridedSlicereshape_6/Shape:output:0&reshape_6/strided_slice/stack:output:0(reshape_6/strided_slice/stack_1:output:0(reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_6/strided_slicey
reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :╚2
reshape_6/Reshape/shape/1x
reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/2╥
reshape_6/Reshape/shapePack reshape_6/strided_slice:output:0"reshape_6/Reshape/shape/1:output:0"reshape_6/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_6/Reshape/shapeТ
reshape_6/ReshapeReshapeinputs reshape_6/Reshape/shape:output:0*
T0*,
_output_shapes
:         ╚2
reshape_6/Reshape▒
!dense_20/Tensordot/ReadVariableOpReadVariableOp*dense_20_tensordot_readvariableop_resource*
_output_shapes

:d*
dtype02#
!dense_20/Tensordot/ReadVariableOp|
dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_20/Tensordot/axesГ
dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_20/Tensordot/free~
dense_20/Tensordot/ShapeShapereshape_6/Reshape:output:0*
T0*
_output_shapes
:2
dense_20/Tensordot/ShapeЖ
 dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_20/Tensordot/GatherV2/axis■
dense_20/Tensordot/GatherV2GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/free:output:0)dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_20/Tensordot/GatherV2К
"dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_20/Tensordot/GatherV2_1/axisД
dense_20/Tensordot/GatherV2_1GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/axes:output:0+dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_20/Tensordot/GatherV2_1~
dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_20/Tensordot/Constд
dense_20/Tensordot/ProdProd$dense_20/Tensordot/GatherV2:output:0!dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_20/Tensordot/ProdВ
dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_20/Tensordot/Const_1м
dense_20/Tensordot/Prod_1Prod&dense_20/Tensordot/GatherV2_1:output:0#dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_20/Tensordot/Prod_1В
dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_20/Tensordot/concat/axis▌
dense_20/Tensordot/concatConcatV2 dense_20/Tensordot/free:output:0 dense_20/Tensordot/axes:output:0'dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_20/Tensordot/concat░
dense_20/Tensordot/stackPack dense_20/Tensordot/Prod:output:0"dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_20/Tensordot/stack└
dense_20/Tensordot/transpose	Transposereshape_6/Reshape:output:0"dense_20/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚2
dense_20/Tensordot/transpose├
dense_20/Tensordot/ReshapeReshape dense_20/Tensordot/transpose:y:0!dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_20/Tensordot/Reshape┬
dense_20/Tensordot/MatMulMatMul#dense_20/Tensordot/Reshape:output:0)dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_20/Tensordot/MatMulВ
dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_20/Tensordot/Const_2Ж
 dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_20/Tensordot/concat_1/axisъ
dense_20/Tensordot/concat_1ConcatV2$dense_20/Tensordot/GatherV2:output:0#dense_20/Tensordot/Const_2:output:0)dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_20/Tensordot/concat_1╡
dense_20/TensordotReshape#dense_20/Tensordot/MatMul:product:0$dense_20/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
dense_20/Tensordotз
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_20/BiasAdd/ReadVariableOpм
dense_20/BiasAddBiasAdddense_20/Tensordot:output:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
dense_20/BiasAddx
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
dense_20/Relu▒
!dense_21/Tensordot/ReadVariableOpReadVariableOp*dense_21_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype02#
!dense_21/Tensordot/ReadVariableOp|
dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_21/Tensordot/axesГ
dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_21/Tensordot/free
dense_21/Tensordot/ShapeShapedense_20/Relu:activations:0*
T0*
_output_shapes
:2
dense_21/Tensordot/ShapeЖ
 dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_21/Tensordot/GatherV2/axis■
dense_21/Tensordot/GatherV2GatherV2!dense_21/Tensordot/Shape:output:0 dense_21/Tensordot/free:output:0)dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_21/Tensordot/GatherV2К
"dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_21/Tensordot/GatherV2_1/axisД
dense_21/Tensordot/GatherV2_1GatherV2!dense_21/Tensordot/Shape:output:0 dense_21/Tensordot/axes:output:0+dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_21/Tensordot/GatherV2_1~
dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_21/Tensordot/Constд
dense_21/Tensordot/ProdProd$dense_21/Tensordot/GatherV2:output:0!dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_21/Tensordot/ProdВ
dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_21/Tensordot/Const_1м
dense_21/Tensordot/Prod_1Prod&dense_21/Tensordot/GatherV2_1:output:0#dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_21/Tensordot/Prod_1В
dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_21/Tensordot/concat/axis▌
dense_21/Tensordot/concatConcatV2 dense_21/Tensordot/free:output:0 dense_21/Tensordot/axes:output:0'dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_21/Tensordot/concat░
dense_21/Tensordot/stackPack dense_21/Tensordot/Prod:output:0"dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_21/Tensordot/stack┴
dense_21/Tensordot/transpose	Transposedense_20/Relu:activations:0"dense_21/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
dense_21/Tensordot/transpose├
dense_21/Tensordot/ReshapeReshape dense_21/Tensordot/transpose:y:0!dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_21/Tensordot/Reshape┬
dense_21/Tensordot/MatMulMatMul#dense_21/Tensordot/Reshape:output:0)dense_21/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_21/Tensordot/MatMulВ
dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_21/Tensordot/Const_2Ж
 dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_21/Tensordot/concat_1/axisъ
dense_21/Tensordot/concat_1ConcatV2$dense_21/Tensordot/GatherV2:output:0#dense_21/Tensordot/Const_2:output:0)dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_21/Tensordot/concat_1╡
dense_21/TensordotReshape#dense_21/Tensordot/MatMul:product:0$dense_21/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
dense_21/Tensordotз
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_21/BiasAdd/ReadVariableOpм
dense_21/BiasAddBiasAdddense_21/Tensordot:output:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
dense_21/BiasAddx
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
dense_21/Relu▒
!dense_22/Tensordot/ReadVariableOpReadVariableOp*dense_22_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype02#
!dense_22/Tensordot/ReadVariableOp|
dense_22/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_22/Tensordot/axesГ
dense_22/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_22/Tensordot/free
dense_22/Tensordot/ShapeShapedense_21/Relu:activations:0*
T0*
_output_shapes
:2
dense_22/Tensordot/ShapeЖ
 dense_22/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_22/Tensordot/GatherV2/axis■
dense_22/Tensordot/GatherV2GatherV2!dense_22/Tensordot/Shape:output:0 dense_22/Tensordot/free:output:0)dense_22/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_22/Tensordot/GatherV2К
"dense_22/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_22/Tensordot/GatherV2_1/axisД
dense_22/Tensordot/GatherV2_1GatherV2!dense_22/Tensordot/Shape:output:0 dense_22/Tensordot/axes:output:0+dense_22/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_22/Tensordot/GatherV2_1~
dense_22/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_22/Tensordot/Constд
dense_22/Tensordot/ProdProd$dense_22/Tensordot/GatherV2:output:0!dense_22/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_22/Tensordot/ProdВ
dense_22/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_22/Tensordot/Const_1м
dense_22/Tensordot/Prod_1Prod&dense_22/Tensordot/GatherV2_1:output:0#dense_22/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_22/Tensordot/Prod_1В
dense_22/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_22/Tensordot/concat/axis▌
dense_22/Tensordot/concatConcatV2 dense_22/Tensordot/free:output:0 dense_22/Tensordot/axes:output:0'dense_22/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_22/Tensordot/concat░
dense_22/Tensordot/stackPack dense_22/Tensordot/Prod:output:0"dense_22/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_22/Tensordot/stack┴
dense_22/Tensordot/transpose	Transposedense_21/Relu:activations:0"dense_22/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
dense_22/Tensordot/transpose├
dense_22/Tensordot/ReshapeReshape dense_22/Tensordot/transpose:y:0!dense_22/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_22/Tensordot/Reshape┬
dense_22/Tensordot/MatMulMatMul#dense_22/Tensordot/Reshape:output:0)dense_22/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/Tensordot/MatMulВ
dense_22/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_22/Tensordot/Const_2Ж
 dense_22/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_22/Tensordot/concat_1/axisъ
dense_22/Tensordot/concat_1ConcatV2$dense_22/Tensordot/GatherV2:output:0#dense_22/Tensordot/Const_2:output:0)dense_22/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_22/Tensordot/concat_1╡
dense_22/TensordotReshape#dense_22/Tensordot/MatMul:product:0$dense_22/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
dense_22/Tensordotз
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_22/BiasAdd/ReadVariableOpм
dense_22/BiasAddBiasAdddense_22/Tensordot:output:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
dense_22/BiasAddx
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
dense_22/Relus
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"     N  2
flatten_5/ConstЬ
flatten_5/ReshapeReshapedense_22/Relu:activations:0flatten_5/Const:output:0*
T0*)
_output_shapes
:         аЬ2
flatten_5/Reshapeк
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource* 
_output_shapes
:
аЬ*
dtype02 
dense_23/MatMul/ReadVariableOpв
dense_23/MatMulMatMulflatten_5/Reshape:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/MatMulз
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpе
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_23/SoftmaxГ
IdentityIdentitydense_23/Softmax:softmax:0 ^dense_20/BiasAdd/ReadVariableOp"^dense_20/Tensordot/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp"^dense_21/Tensordot/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp"^dense_22/Tensordot/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         ░	::::::::2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2F
!dense_20/Tensordot/ReadVariableOp!dense_20/Tensordot/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2F
!dense_21/Tensordot/ReadVariableOp!dense_21/Tensordot/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2F
!dense_22/Tensordot/ReadVariableOp!dense_22/Tensordot/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:P L
(
_output_shapes
:         ░	
 
_user_specified_nameinputs
╖ 
т
C__inference_dense_20_layer_call_and_return_conditional_losses_27853

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpЦ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:d*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis╤
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis╫
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackС
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ╚2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis╜
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1С
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         ╚d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         ╚::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         ╚
 
_user_specified_nameinputs
╟
Ы
G__inference_sequential_6_layer_call_and_return_conditional_losses_27430
reshape_6_input
dense_20_27408
dense_20_27410
dense_21_27413
dense_21_27415
dense_22_27418
dense_22_27420
dense_23_27424
dense_23_27426
identityИв dense_20/StatefulPartitionedCallв dense_21/StatefulPartitionedCallв dense_22/StatefulPartitionedCallв dense_23/StatefulPartitionedCallф
reshape_6/PartitionedCallPartitionedCallreshape_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_reshape_6_layer_call_and_return_conditional_losses_272132
reshape_6/PartitionedCall▓
 dense_20/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0dense_20_27408dense_20_27410*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_20_layer_call_and_return_conditional_losses_272522"
 dense_20/StatefulPartitionedCall╣
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_27413dense_21_27415*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_21_layer_call_and_return_conditional_losses_272992"
 dense_21/StatefulPartitionedCall╣
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_27418dense_22_27420*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_273462"
 dense_22/StatefulPartitionedCall√
flatten_5/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         аЬ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_5_layer_call_and_return_conditional_losses_273682
flatten_5/PartitionedCallн
 dense_23/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_23_27424dense_23_27426*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_273872"
 dense_23/StatefulPartitionedCallЙ
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         ░	::::::::2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:Y U
(
_output_shapes
:         ░	
)
_user_specified_namereshape_6_input
╕
`
D__inference_flatten_5_layer_call_and_return_conditional_losses_27368

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     N  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         аЬ2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         аЬ2

Identity"
identityIdentity:output:0*+
_input_shapes
:         ╚d:T P
,
_output_shapes
:         ╚d
 
_user_specified_nameinputs
Р
█
#__inference_signature_wrapper_27556
reshape_6_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallreshape_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_271962
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         ░	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:         ░	
)
_user_specified_namereshape_6_input
└
ф
,__inference_sequential_6_layer_call_fn_27525
reshape_6_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИвStatefulPartitionedCall╬
StatefulPartitionedCallStatefulPartitionedCallreshape_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_275062
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         ░	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:         ░	
)
_user_specified_namereshape_6_input
а
E
)__inference_flatten_5_layer_call_fn_27953

inputs
identity─
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         аЬ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_5_layer_call_and_return_conditional_losses_273682
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         аЬ2

Identity"
identityIdentity:output:0*+
_input_shapes
:         ╚d:T P
,
_output_shapes
:         ╚d
 
_user_specified_nameinputs
╙G
┐
__inference__traced_save_28095
file_prefix.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_20_kernel_m_read_readvariableop3
/savev2_adam_dense_20_bias_m_read_readvariableop5
1savev2_adam_dense_21_kernel_m_read_readvariableop3
/savev2_adam_dense_21_bias_m_read_readvariableop5
1savev2_adam_dense_22_kernel_m_read_readvariableop3
/savev2_adam_dense_22_bias_m_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableop5
1savev2_adam_dense_20_kernel_v_read_readvariableop3
/savev2_adam_dense_20_bias_v_read_readvariableop5
1savev2_adam_dense_21_kernel_v_read_readvariableop3
/savev2_adam_dense_21_bias_v_read_readvariableop5
1savev2_adam_dense_22_kernel_v_read_readvariableop3
/savev2_adam_dense_22_bias_v_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename╞
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*╪
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╠
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesл
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_20_kernel_m_read_readvariableop/savev2_adam_dense_20_bias_m_read_readvariableop1savev2_adam_dense_21_kernel_m_read_readvariableop/savev2_adam_dense_21_bias_m_read_readvariableop1savev2_adam_dense_22_kernel_m_read_readvariableop/savev2_adam_dense_22_bias_m_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop1savev2_adam_dense_20_kernel_v_read_readvariableop/savev2_adam_dense_20_bias_v_read_readvariableop1savev2_adam_dense_21_kernel_v_read_readvariableop/savev2_adam_dense_21_bias_v_read_readvariableop1savev2_adam_dense_22_kernel_v_read_readvariableop/savev2_adam_dense_22_bias_v_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*ё
_input_shapes▀
▄: :d:d:dd:d:dd:d:
аЬ:: : : : : : : : : :d:d:dd:d:dd:d:
аЬ::d:d:dd:d:dd:d:
аЬ:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:&"
 
_output_shapes
:
аЬ: 

_output_shapes
::	
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
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:&"
 
_output_shapes
:
аЬ: 

_output_shapes
::$ 

_output_shapes

:d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:& "
 
_output_shapes
:
аЬ: !

_output_shapes
::"

_output_shapes
: 
е
█
,__inference_sequential_6_layer_call_fn_27804

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИвStatefulPartitionedCall┼
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_275062
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         ░	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ░	
 
_user_specified_nameinputs
√	
▄
C__inference_dense_23_layer_call_and_return_conditional_losses_27387

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
аЬ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*0
_input_shapes
:         аЬ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         аЬ
 
_user_specified_nameinputs
ю
}
(__inference_dense_22_layer_call_fn_27942

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_273462
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         ╚d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         ╚d::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ╚d
 
_user_specified_nameinputs
╖ 
т
C__inference_dense_22_layer_call_and_return_conditional_losses_27346

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpЦ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis╤
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis╫
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackС
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis╜
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1С
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         ╚d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         ╚d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         ╚d
 
_user_specified_nameinputs
ю
}
(__inference_dense_21_layer_call_fn_27902

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_21_layer_call_and_return_conditional_losses_272992
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         ╚d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         ╚d::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ╚d
 
_user_specified_nameinputs
╖ 
т
C__inference_dense_20_layer_call_and_return_conditional_losses_27252

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpЦ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:d*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis╤
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis╫
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackС
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ╚2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis╜
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1С
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         ╚d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         ╚::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         ╚
 
_user_specified_nameinputs
ю
}
(__inference_dense_20_layer_call_fn_27862

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_20_layer_call_and_return_conditional_losses_272522
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         ╚d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         ╚::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ╚
 
_user_specified_nameinputs
м
Т
G__inference_sequential_6_layer_call_and_return_conditional_losses_27506

inputs
dense_20_27484
dense_20_27486
dense_21_27489
dense_21_27491
dense_22_27494
dense_22_27496
dense_23_27500
dense_23_27502
identityИв dense_20/StatefulPartitionedCallв dense_21/StatefulPartitionedCallв dense_22/StatefulPartitionedCallв dense_23/StatefulPartitionedCall█
reshape_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_reshape_6_layer_call_and_return_conditional_losses_272132
reshape_6/PartitionedCall▓
 dense_20/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0dense_20_27484dense_20_27486*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_20_layer_call_and_return_conditional_losses_272522"
 dense_20/StatefulPartitionedCall╣
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_27489dense_21_27491*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_21_layer_call_and_return_conditional_losses_272992"
 dense_21/StatefulPartitionedCall╣
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_27494dense_22_27496*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_273462"
 dense_22/StatefulPartitionedCall√
flatten_5/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         аЬ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_5_layer_call_and_return_conditional_losses_273682
flatten_5/PartitionedCallн
 dense_23/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_23_27500dense_23_27502*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_273872"
 dense_23/StatefulPartitionedCallЙ
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         ░	::::::::2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:P L
(
_output_shapes
:         ░	
 
_user_specified_nameinputs
Ю
E
)__inference_reshape_6_layer_call_fn_27822

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_reshape_6_layer_call_and_return_conditional_losses_272132
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*'
_input_shapes
:         ░	:P L
(
_output_shapes
:         ░	
 
_user_specified_nameinputs
╕
`
D__inference_flatten_5_layer_call_and_return_conditional_losses_27948

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     N  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         аЬ2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         аЬ2

Identity"
identityIdentity:output:0*+
_input_shapes
:         ╚d:T P
,
_output_shapes
:         ╚d
 
_user_specified_nameinputs
м
Т
G__inference_sequential_6_layer_call_and_return_conditional_losses_27459

inputs
dense_20_27437
dense_20_27439
dense_21_27442
dense_21_27444
dense_22_27447
dense_22_27449
dense_23_27453
dense_23_27455
identityИв dense_20/StatefulPartitionedCallв dense_21/StatefulPartitionedCallв dense_22/StatefulPartitionedCallв dense_23/StatefulPartitionedCall█
reshape_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_reshape_6_layer_call_and_return_conditional_losses_272132
reshape_6/PartitionedCall▓
 dense_20/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0dense_20_27437dense_20_27439*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_20_layer_call_and_return_conditional_losses_272522"
 dense_20/StatefulPartitionedCall╣
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_27442dense_21_27444*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_21_layer_call_and_return_conditional_losses_272992"
 dense_21/StatefulPartitionedCall╣
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_27447dense_22_27449*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_273462"
 dense_22/StatefulPartitionedCall√
flatten_5/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         аЬ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_5_layer_call_and_return_conditional_losses_273682
flatten_5/PartitionedCallн
 dense_23/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_23_27453dense_23_27455*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_273872"
 dense_23/StatefulPartitionedCallЙ
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         ░	::::::::2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:P L
(
_output_shapes
:         ░	
 
_user_specified_nameinputs
└
ф
,__inference_sequential_6_layer_call_fn_27478
reshape_6_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИвStatefulPartitionedCall╬
StatefulPartitionedCallStatefulPartitionedCallreshape_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_274592
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         ░	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:         ░	
)
_user_specified_namereshape_6_input
√	
▄
C__inference_dense_23_layer_call_and_return_conditional_losses_27964

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
аЬ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*0
_input_shapes
:         аЬ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         аЬ
 
_user_specified_nameinputs
╖ 
т
C__inference_dense_21_layer_call_and_return_conditional_losses_27299

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpЦ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis╤
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis╫
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackС
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis╜
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1С
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         ╚d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         ╚d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         ╚d
 
_user_specified_nameinputs
Ои
в
 __inference__wrapped_model_27196
reshape_6_input;
7sequential_6_dense_20_tensordot_readvariableop_resource9
5sequential_6_dense_20_biasadd_readvariableop_resource;
7sequential_6_dense_21_tensordot_readvariableop_resource9
5sequential_6_dense_21_biasadd_readvariableop_resource;
7sequential_6_dense_22_tensordot_readvariableop_resource9
5sequential_6_dense_22_biasadd_readvariableop_resource8
4sequential_6_dense_23_matmul_readvariableop_resource9
5sequential_6_dense_23_biasadd_readvariableop_resource
identityИв,sequential_6/dense_20/BiasAdd/ReadVariableOpв.sequential_6/dense_20/Tensordot/ReadVariableOpв,sequential_6/dense_21/BiasAdd/ReadVariableOpв.sequential_6/dense_21/Tensordot/ReadVariableOpв,sequential_6/dense_22/BiasAdd/ReadVariableOpв.sequential_6/dense_22/Tensordot/ReadVariableOpв,sequential_6/dense_23/BiasAdd/ReadVariableOpв+sequential_6/dense_23/MatMul/ReadVariableOp{
sequential_6/reshape_6/ShapeShapereshape_6_input*
T0*
_output_shapes
:2
sequential_6/reshape_6/Shapeв
*sequential_6/reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_6/reshape_6/strided_slice/stackж
,sequential_6/reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_6/reshape_6/strided_slice/stack_1ж
,sequential_6/reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_6/reshape_6/strided_slice/stack_2ь
$sequential_6/reshape_6/strided_sliceStridedSlice%sequential_6/reshape_6/Shape:output:03sequential_6/reshape_6/strided_slice/stack:output:05sequential_6/reshape_6/strided_slice/stack_1:output:05sequential_6/reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_6/reshape_6/strided_sliceУ
&sequential_6/reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :╚2(
&sequential_6/reshape_6/Reshape/shape/1Т
&sequential_6/reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_6/reshape_6/Reshape/shape/2У
$sequential_6/reshape_6/Reshape/shapePack-sequential_6/reshape_6/strided_slice:output:0/sequential_6/reshape_6/Reshape/shape/1:output:0/sequential_6/reshape_6/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$sequential_6/reshape_6/Reshape/shape┬
sequential_6/reshape_6/ReshapeReshapereshape_6_input-sequential_6/reshape_6/Reshape/shape:output:0*
T0*,
_output_shapes
:         ╚2 
sequential_6/reshape_6/Reshape╪
.sequential_6/dense_20/Tensordot/ReadVariableOpReadVariableOp7sequential_6_dense_20_tensordot_readvariableop_resource*
_output_shapes

:d*
dtype020
.sequential_6/dense_20/Tensordot/ReadVariableOpЦ
$sequential_6/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_6/dense_20/Tensordot/axesЭ
$sequential_6/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_6/dense_20/Tensordot/freeе
%sequential_6/dense_20/Tensordot/ShapeShape'sequential_6/reshape_6/Reshape:output:0*
T0*
_output_shapes
:2'
%sequential_6/dense_20/Tensordot/Shapeа
-sequential_6/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_6/dense_20/Tensordot/GatherV2/axis┐
(sequential_6/dense_20/Tensordot/GatherV2GatherV2.sequential_6/dense_20/Tensordot/Shape:output:0-sequential_6/dense_20/Tensordot/free:output:06sequential_6/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_6/dense_20/Tensordot/GatherV2д
/sequential_6/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_6/dense_20/Tensordot/GatherV2_1/axis┼
*sequential_6/dense_20/Tensordot/GatherV2_1GatherV2.sequential_6/dense_20/Tensordot/Shape:output:0-sequential_6/dense_20/Tensordot/axes:output:08sequential_6/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_6/dense_20/Tensordot/GatherV2_1Ш
%sequential_6/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_6/dense_20/Tensordot/Const╪
$sequential_6/dense_20/Tensordot/ProdProd1sequential_6/dense_20/Tensordot/GatherV2:output:0.sequential_6/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_6/dense_20/Tensordot/ProdЬ
'sequential_6/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_6/dense_20/Tensordot/Const_1р
&sequential_6/dense_20/Tensordot/Prod_1Prod3sequential_6/dense_20/Tensordot/GatherV2_1:output:00sequential_6/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_6/dense_20/Tensordot/Prod_1Ь
+sequential_6/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_6/dense_20/Tensordot/concat/axisЮ
&sequential_6/dense_20/Tensordot/concatConcatV2-sequential_6/dense_20/Tensordot/free:output:0-sequential_6/dense_20/Tensordot/axes:output:04sequential_6/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_6/dense_20/Tensordot/concatф
%sequential_6/dense_20/Tensordot/stackPack-sequential_6/dense_20/Tensordot/Prod:output:0/sequential_6/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_6/dense_20/Tensordot/stackЇ
)sequential_6/dense_20/Tensordot/transpose	Transpose'sequential_6/reshape_6/Reshape:output:0/sequential_6/dense_20/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚2+
)sequential_6/dense_20/Tensordot/transposeў
'sequential_6/dense_20/Tensordot/ReshapeReshape-sequential_6/dense_20/Tensordot/transpose:y:0.sequential_6/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2)
'sequential_6/dense_20/Tensordot/ReshapeЎ
&sequential_6/dense_20/Tensordot/MatMulMatMul0sequential_6/dense_20/Tensordot/Reshape:output:06sequential_6/dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2(
&sequential_6/dense_20/Tensordot/MatMulЬ
'sequential_6/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2)
'sequential_6/dense_20/Tensordot/Const_2а
-sequential_6/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_6/dense_20/Tensordot/concat_1/axisл
(sequential_6/dense_20/Tensordot/concat_1ConcatV21sequential_6/dense_20/Tensordot/GatherV2:output:00sequential_6/dense_20/Tensordot/Const_2:output:06sequential_6/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_6/dense_20/Tensordot/concat_1щ
sequential_6/dense_20/TensordotReshape0sequential_6/dense_20/Tensordot/MatMul:product:01sequential_6/dense_20/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2!
sequential_6/dense_20/Tensordot╬
,sequential_6/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_20_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02.
,sequential_6/dense_20/BiasAdd/ReadVariableOpр
sequential_6/dense_20/BiasAddBiasAdd(sequential_6/dense_20/Tensordot:output:04sequential_6/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
sequential_6/dense_20/BiasAddЯ
sequential_6/dense_20/ReluRelu&sequential_6/dense_20/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
sequential_6/dense_20/Relu╪
.sequential_6/dense_21/Tensordot/ReadVariableOpReadVariableOp7sequential_6_dense_21_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype020
.sequential_6/dense_21/Tensordot/ReadVariableOpЦ
$sequential_6/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_6/dense_21/Tensordot/axesЭ
$sequential_6/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_6/dense_21/Tensordot/freeж
%sequential_6/dense_21/Tensordot/ShapeShape(sequential_6/dense_20/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_6/dense_21/Tensordot/Shapeа
-sequential_6/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_6/dense_21/Tensordot/GatherV2/axis┐
(sequential_6/dense_21/Tensordot/GatherV2GatherV2.sequential_6/dense_21/Tensordot/Shape:output:0-sequential_6/dense_21/Tensordot/free:output:06sequential_6/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_6/dense_21/Tensordot/GatherV2д
/sequential_6/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_6/dense_21/Tensordot/GatherV2_1/axis┼
*sequential_6/dense_21/Tensordot/GatherV2_1GatherV2.sequential_6/dense_21/Tensordot/Shape:output:0-sequential_6/dense_21/Tensordot/axes:output:08sequential_6/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_6/dense_21/Tensordot/GatherV2_1Ш
%sequential_6/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_6/dense_21/Tensordot/Const╪
$sequential_6/dense_21/Tensordot/ProdProd1sequential_6/dense_21/Tensordot/GatherV2:output:0.sequential_6/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_6/dense_21/Tensordot/ProdЬ
'sequential_6/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_6/dense_21/Tensordot/Const_1р
&sequential_6/dense_21/Tensordot/Prod_1Prod3sequential_6/dense_21/Tensordot/GatherV2_1:output:00sequential_6/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_6/dense_21/Tensordot/Prod_1Ь
+sequential_6/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_6/dense_21/Tensordot/concat/axisЮ
&sequential_6/dense_21/Tensordot/concatConcatV2-sequential_6/dense_21/Tensordot/free:output:0-sequential_6/dense_21/Tensordot/axes:output:04sequential_6/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_6/dense_21/Tensordot/concatф
%sequential_6/dense_21/Tensordot/stackPack-sequential_6/dense_21/Tensordot/Prod:output:0/sequential_6/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_6/dense_21/Tensordot/stackї
)sequential_6/dense_21/Tensordot/transpose	Transpose(sequential_6/dense_20/Relu:activations:0/sequential_6/dense_21/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2+
)sequential_6/dense_21/Tensordot/transposeў
'sequential_6/dense_21/Tensordot/ReshapeReshape-sequential_6/dense_21/Tensordot/transpose:y:0.sequential_6/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2)
'sequential_6/dense_21/Tensordot/ReshapeЎ
&sequential_6/dense_21/Tensordot/MatMulMatMul0sequential_6/dense_21/Tensordot/Reshape:output:06sequential_6/dense_21/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2(
&sequential_6/dense_21/Tensordot/MatMulЬ
'sequential_6/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2)
'sequential_6/dense_21/Tensordot/Const_2а
-sequential_6/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_6/dense_21/Tensordot/concat_1/axisл
(sequential_6/dense_21/Tensordot/concat_1ConcatV21sequential_6/dense_21/Tensordot/GatherV2:output:00sequential_6/dense_21/Tensordot/Const_2:output:06sequential_6/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_6/dense_21/Tensordot/concat_1щ
sequential_6/dense_21/TensordotReshape0sequential_6/dense_21/Tensordot/MatMul:product:01sequential_6/dense_21/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2!
sequential_6/dense_21/Tensordot╬
,sequential_6/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_21_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02.
,sequential_6/dense_21/BiasAdd/ReadVariableOpр
sequential_6/dense_21/BiasAddBiasAdd(sequential_6/dense_21/Tensordot:output:04sequential_6/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
sequential_6/dense_21/BiasAddЯ
sequential_6/dense_21/ReluRelu&sequential_6/dense_21/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
sequential_6/dense_21/Relu╪
.sequential_6/dense_22/Tensordot/ReadVariableOpReadVariableOp7sequential_6_dense_22_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype020
.sequential_6/dense_22/Tensordot/ReadVariableOpЦ
$sequential_6/dense_22/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_6/dense_22/Tensordot/axesЭ
$sequential_6/dense_22/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_6/dense_22/Tensordot/freeж
%sequential_6/dense_22/Tensordot/ShapeShape(sequential_6/dense_21/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_6/dense_22/Tensordot/Shapeа
-sequential_6/dense_22/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_6/dense_22/Tensordot/GatherV2/axis┐
(sequential_6/dense_22/Tensordot/GatherV2GatherV2.sequential_6/dense_22/Tensordot/Shape:output:0-sequential_6/dense_22/Tensordot/free:output:06sequential_6/dense_22/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_6/dense_22/Tensordot/GatherV2д
/sequential_6/dense_22/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_6/dense_22/Tensordot/GatherV2_1/axis┼
*sequential_6/dense_22/Tensordot/GatherV2_1GatherV2.sequential_6/dense_22/Tensordot/Shape:output:0-sequential_6/dense_22/Tensordot/axes:output:08sequential_6/dense_22/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_6/dense_22/Tensordot/GatherV2_1Ш
%sequential_6/dense_22/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_6/dense_22/Tensordot/Const╪
$sequential_6/dense_22/Tensordot/ProdProd1sequential_6/dense_22/Tensordot/GatherV2:output:0.sequential_6/dense_22/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_6/dense_22/Tensordot/ProdЬ
'sequential_6/dense_22/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_6/dense_22/Tensordot/Const_1р
&sequential_6/dense_22/Tensordot/Prod_1Prod3sequential_6/dense_22/Tensordot/GatherV2_1:output:00sequential_6/dense_22/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_6/dense_22/Tensordot/Prod_1Ь
+sequential_6/dense_22/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_6/dense_22/Tensordot/concat/axisЮ
&sequential_6/dense_22/Tensordot/concatConcatV2-sequential_6/dense_22/Tensordot/free:output:0-sequential_6/dense_22/Tensordot/axes:output:04sequential_6/dense_22/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_6/dense_22/Tensordot/concatф
%sequential_6/dense_22/Tensordot/stackPack-sequential_6/dense_22/Tensordot/Prod:output:0/sequential_6/dense_22/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_6/dense_22/Tensordot/stackї
)sequential_6/dense_22/Tensordot/transpose	Transpose(sequential_6/dense_21/Relu:activations:0/sequential_6/dense_22/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2+
)sequential_6/dense_22/Tensordot/transposeў
'sequential_6/dense_22/Tensordot/ReshapeReshape-sequential_6/dense_22/Tensordot/transpose:y:0.sequential_6/dense_22/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2)
'sequential_6/dense_22/Tensordot/ReshapeЎ
&sequential_6/dense_22/Tensordot/MatMulMatMul0sequential_6/dense_22/Tensordot/Reshape:output:06sequential_6/dense_22/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2(
&sequential_6/dense_22/Tensordot/MatMulЬ
'sequential_6/dense_22/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2)
'sequential_6/dense_22/Tensordot/Const_2а
-sequential_6/dense_22/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_6/dense_22/Tensordot/concat_1/axisл
(sequential_6/dense_22/Tensordot/concat_1ConcatV21sequential_6/dense_22/Tensordot/GatherV2:output:00sequential_6/dense_22/Tensordot/Const_2:output:06sequential_6/dense_22/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_6/dense_22/Tensordot/concat_1щ
sequential_6/dense_22/TensordotReshape0sequential_6/dense_22/Tensordot/MatMul:product:01sequential_6/dense_22/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2!
sequential_6/dense_22/Tensordot╬
,sequential_6/dense_22/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_22_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02.
,sequential_6/dense_22/BiasAdd/ReadVariableOpр
sequential_6/dense_22/BiasAddBiasAdd(sequential_6/dense_22/Tensordot:output:04sequential_6/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
sequential_6/dense_22/BiasAddЯ
sequential_6/dense_22/ReluRelu&sequential_6/dense_22/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
sequential_6/dense_22/ReluН
sequential_6/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"     N  2
sequential_6/flatten_5/Const╨
sequential_6/flatten_5/ReshapeReshape(sequential_6/dense_22/Relu:activations:0%sequential_6/flatten_5/Const:output:0*
T0*)
_output_shapes
:         аЬ2 
sequential_6/flatten_5/Reshape╤
+sequential_6/dense_23/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_23_matmul_readvariableop_resource* 
_output_shapes
:
аЬ*
dtype02-
+sequential_6/dense_23/MatMul/ReadVariableOp╓
sequential_6/dense_23/MatMulMatMul'sequential_6/flatten_5/Reshape:output:03sequential_6/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_6/dense_23/MatMul╬
,sequential_6/dense_23/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_6/dense_23/BiasAdd/ReadVariableOp┘
sequential_6/dense_23/BiasAddBiasAdd&sequential_6/dense_23/MatMul:product:04sequential_6/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_6/dense_23/BiasAddг
sequential_6/dense_23/SoftmaxSoftmax&sequential_6/dense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
sequential_6/dense_23/Softmax°
IdentityIdentity'sequential_6/dense_23/Softmax:softmax:0-^sequential_6/dense_20/BiasAdd/ReadVariableOp/^sequential_6/dense_20/Tensordot/ReadVariableOp-^sequential_6/dense_21/BiasAdd/ReadVariableOp/^sequential_6/dense_21/Tensordot/ReadVariableOp-^sequential_6/dense_22/BiasAdd/ReadVariableOp/^sequential_6/dense_22/Tensordot/ReadVariableOp-^sequential_6/dense_23/BiasAdd/ReadVariableOp,^sequential_6/dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         ░	::::::::2\
,sequential_6/dense_20/BiasAdd/ReadVariableOp,sequential_6/dense_20/BiasAdd/ReadVariableOp2`
.sequential_6/dense_20/Tensordot/ReadVariableOp.sequential_6/dense_20/Tensordot/ReadVariableOp2\
,sequential_6/dense_21/BiasAdd/ReadVariableOp,sequential_6/dense_21/BiasAdd/ReadVariableOp2`
.sequential_6/dense_21/Tensordot/ReadVariableOp.sequential_6/dense_21/Tensordot/ReadVariableOp2\
,sequential_6/dense_22/BiasAdd/ReadVariableOp,sequential_6/dense_22/BiasAdd/ReadVariableOp2`
.sequential_6/dense_22/Tensordot/ReadVariableOp.sequential_6/dense_22/Tensordot/ReadVariableOp2\
,sequential_6/dense_23/BiasAdd/ReadVariableOp,sequential_6/dense_23/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_23/MatMul/ReadVariableOp+sequential_6/dense_23/MatMul/ReadVariableOp:Y U
(
_output_shapes
:         ░	
)
_user_specified_namereshape_6_input
╖ 
т
C__inference_dense_22_layer_call_and_return_conditional_losses_27933

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpЦ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis╤
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis╫
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackС
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis╜
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1С
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         ╚d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         ╚d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         ╚d
 
_user_specified_nameinputs
▐
}
(__inference_dense_23_layer_call_fn_27973

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_273872
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*0
_input_shapes
:         аЬ::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         аЬ
 
_user_specified_nameinputs
╖ 
т
C__inference_dense_21_layer_call_and_return_conditional_losses_27893

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpЦ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis╤
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis╫
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackС
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis╜
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1С
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         ╚d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         ╚d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         ╚d
 
_user_specified_nameinputs
▌Л
є
!__inference__traced_restore_28204
file_prefix$
 assignvariableop_dense_20_kernel$
 assignvariableop_1_dense_20_bias&
"assignvariableop_2_dense_21_kernel$
 assignvariableop_3_dense_21_bias&
"assignvariableop_4_dense_22_kernel$
 assignvariableop_5_dense_22_bias&
"assignvariableop_6_dense_23_kernel$
 assignvariableop_7_dense_23_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate
assignvariableop_13_total
assignvariableop_14_count
assignvariableop_15_total_1
assignvariableop_16_count_1.
*assignvariableop_17_adam_dense_20_kernel_m,
(assignvariableop_18_adam_dense_20_bias_m.
*assignvariableop_19_adam_dense_21_kernel_m,
(assignvariableop_20_adam_dense_21_bias_m.
*assignvariableop_21_adam_dense_22_kernel_m,
(assignvariableop_22_adam_dense_22_bias_m.
*assignvariableop_23_adam_dense_23_kernel_m,
(assignvariableop_24_adam_dense_23_bias_m.
*assignvariableop_25_adam_dense_20_kernel_v,
(assignvariableop_26_adam_dense_20_bias_v.
*assignvariableop_27_adam_dense_21_kernel_v,
(assignvariableop_28_adam_dense_21_bias_v.
*assignvariableop_29_adam_dense_22_kernel_v,
(assignvariableop_30_adam_dense_22_bias_v.
*assignvariableop_31_adam_dense_23_kernel_v,
(assignvariableop_32_adam_dense_23_bias_v
identity_34ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9╠
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*╪
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names╥
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices╪
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЯ
AssignVariableOpAssignVariableOp assignvariableop_dense_20_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1е
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_20_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2з
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_21_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3е
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_21_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4з
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_22_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5е
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_22_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6з
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_23_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7е
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_23_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8б
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9г
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10з
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11ж
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12о
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13б
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14б
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15г
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16г
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17▓
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_20_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18░
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_20_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19▓
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_21_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20░
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_21_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21▓
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_22_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22░
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_22_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23▓
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_23_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24░
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_23_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25▓
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_20_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26░
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_20_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27▓
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_21_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28░
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_21_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29▓
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_22_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30░
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_22_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31▓
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_23_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32░
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_23_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp┤
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33з
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*Ы
_input_shapesЙ
Ж: :::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
е
█
,__inference_sequential_6_layer_call_fn_27783

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИвStatefulPartitionedCall┼
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_274592
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         ░	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ░	
 
_user_specified_nameinputs
ёЕ
Ё
G__inference_sequential_6_layer_call_and_return_conditional_losses_27762

inputs.
*dense_20_tensordot_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource.
*dense_21_tensordot_readvariableop_resource,
(dense_21_biasadd_readvariableop_resource.
*dense_22_tensordot_readvariableop_resource,
(dense_22_biasadd_readvariableop_resource+
'dense_23_matmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource
identityИвdense_20/BiasAdd/ReadVariableOpв!dense_20/Tensordot/ReadVariableOpвdense_21/BiasAdd/ReadVariableOpв!dense_21/Tensordot/ReadVariableOpвdense_22/BiasAdd/ReadVariableOpв!dense_22/Tensordot/ReadVariableOpвdense_23/BiasAdd/ReadVariableOpвdense_23/MatMul/ReadVariableOpX
reshape_6/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape_6/ShapeИ
reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_6/strided_slice/stackМ
reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_1М
reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_2Ю
reshape_6/strided_sliceStridedSlicereshape_6/Shape:output:0&reshape_6/strided_slice/stack:output:0(reshape_6/strided_slice/stack_1:output:0(reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_6/strided_slicey
reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :╚2
reshape_6/Reshape/shape/1x
reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/2╥
reshape_6/Reshape/shapePack reshape_6/strided_slice:output:0"reshape_6/Reshape/shape/1:output:0"reshape_6/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_6/Reshape/shapeТ
reshape_6/ReshapeReshapeinputs reshape_6/Reshape/shape:output:0*
T0*,
_output_shapes
:         ╚2
reshape_6/Reshape▒
!dense_20/Tensordot/ReadVariableOpReadVariableOp*dense_20_tensordot_readvariableop_resource*
_output_shapes

:d*
dtype02#
!dense_20/Tensordot/ReadVariableOp|
dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_20/Tensordot/axesГ
dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_20/Tensordot/free~
dense_20/Tensordot/ShapeShapereshape_6/Reshape:output:0*
T0*
_output_shapes
:2
dense_20/Tensordot/ShapeЖ
 dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_20/Tensordot/GatherV2/axis■
dense_20/Tensordot/GatherV2GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/free:output:0)dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_20/Tensordot/GatherV2К
"dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_20/Tensordot/GatherV2_1/axisД
dense_20/Tensordot/GatherV2_1GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/axes:output:0+dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_20/Tensordot/GatherV2_1~
dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_20/Tensordot/Constд
dense_20/Tensordot/ProdProd$dense_20/Tensordot/GatherV2:output:0!dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_20/Tensordot/ProdВ
dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_20/Tensordot/Const_1м
dense_20/Tensordot/Prod_1Prod&dense_20/Tensordot/GatherV2_1:output:0#dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_20/Tensordot/Prod_1В
dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_20/Tensordot/concat/axis▌
dense_20/Tensordot/concatConcatV2 dense_20/Tensordot/free:output:0 dense_20/Tensordot/axes:output:0'dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_20/Tensordot/concat░
dense_20/Tensordot/stackPack dense_20/Tensordot/Prod:output:0"dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_20/Tensordot/stack└
dense_20/Tensordot/transpose	Transposereshape_6/Reshape:output:0"dense_20/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚2
dense_20/Tensordot/transpose├
dense_20/Tensordot/ReshapeReshape dense_20/Tensordot/transpose:y:0!dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_20/Tensordot/Reshape┬
dense_20/Tensordot/MatMulMatMul#dense_20/Tensordot/Reshape:output:0)dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_20/Tensordot/MatMulВ
dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_20/Tensordot/Const_2Ж
 dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_20/Tensordot/concat_1/axisъ
dense_20/Tensordot/concat_1ConcatV2$dense_20/Tensordot/GatherV2:output:0#dense_20/Tensordot/Const_2:output:0)dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_20/Tensordot/concat_1╡
dense_20/TensordotReshape#dense_20/Tensordot/MatMul:product:0$dense_20/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
dense_20/Tensordotз
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_20/BiasAdd/ReadVariableOpм
dense_20/BiasAddBiasAdddense_20/Tensordot:output:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
dense_20/BiasAddx
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
dense_20/Relu▒
!dense_21/Tensordot/ReadVariableOpReadVariableOp*dense_21_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype02#
!dense_21/Tensordot/ReadVariableOp|
dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_21/Tensordot/axesГ
dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_21/Tensordot/free
dense_21/Tensordot/ShapeShapedense_20/Relu:activations:0*
T0*
_output_shapes
:2
dense_21/Tensordot/ShapeЖ
 dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_21/Tensordot/GatherV2/axis■
dense_21/Tensordot/GatherV2GatherV2!dense_21/Tensordot/Shape:output:0 dense_21/Tensordot/free:output:0)dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_21/Tensordot/GatherV2К
"dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_21/Tensordot/GatherV2_1/axisД
dense_21/Tensordot/GatherV2_1GatherV2!dense_21/Tensordot/Shape:output:0 dense_21/Tensordot/axes:output:0+dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_21/Tensordot/GatherV2_1~
dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_21/Tensordot/Constд
dense_21/Tensordot/ProdProd$dense_21/Tensordot/GatherV2:output:0!dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_21/Tensordot/ProdВ
dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_21/Tensordot/Const_1м
dense_21/Tensordot/Prod_1Prod&dense_21/Tensordot/GatherV2_1:output:0#dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_21/Tensordot/Prod_1В
dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_21/Tensordot/concat/axis▌
dense_21/Tensordot/concatConcatV2 dense_21/Tensordot/free:output:0 dense_21/Tensordot/axes:output:0'dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_21/Tensordot/concat░
dense_21/Tensordot/stackPack dense_21/Tensordot/Prod:output:0"dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_21/Tensordot/stack┴
dense_21/Tensordot/transpose	Transposedense_20/Relu:activations:0"dense_21/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
dense_21/Tensordot/transpose├
dense_21/Tensordot/ReshapeReshape dense_21/Tensordot/transpose:y:0!dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_21/Tensordot/Reshape┬
dense_21/Tensordot/MatMulMatMul#dense_21/Tensordot/Reshape:output:0)dense_21/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_21/Tensordot/MatMulВ
dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_21/Tensordot/Const_2Ж
 dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_21/Tensordot/concat_1/axisъ
dense_21/Tensordot/concat_1ConcatV2$dense_21/Tensordot/GatherV2:output:0#dense_21/Tensordot/Const_2:output:0)dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_21/Tensordot/concat_1╡
dense_21/TensordotReshape#dense_21/Tensordot/MatMul:product:0$dense_21/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
dense_21/Tensordotз
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_21/BiasAdd/ReadVariableOpм
dense_21/BiasAddBiasAdddense_21/Tensordot:output:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
dense_21/BiasAddx
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
dense_21/Relu▒
!dense_22/Tensordot/ReadVariableOpReadVariableOp*dense_22_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype02#
!dense_22/Tensordot/ReadVariableOp|
dense_22/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_22/Tensordot/axesГ
dense_22/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_22/Tensordot/free
dense_22/Tensordot/ShapeShapedense_21/Relu:activations:0*
T0*
_output_shapes
:2
dense_22/Tensordot/ShapeЖ
 dense_22/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_22/Tensordot/GatherV2/axis■
dense_22/Tensordot/GatherV2GatherV2!dense_22/Tensordot/Shape:output:0 dense_22/Tensordot/free:output:0)dense_22/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_22/Tensordot/GatherV2К
"dense_22/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_22/Tensordot/GatherV2_1/axisД
dense_22/Tensordot/GatherV2_1GatherV2!dense_22/Tensordot/Shape:output:0 dense_22/Tensordot/axes:output:0+dense_22/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_22/Tensordot/GatherV2_1~
dense_22/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_22/Tensordot/Constд
dense_22/Tensordot/ProdProd$dense_22/Tensordot/GatherV2:output:0!dense_22/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_22/Tensordot/ProdВ
dense_22/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_22/Tensordot/Const_1м
dense_22/Tensordot/Prod_1Prod&dense_22/Tensordot/GatherV2_1:output:0#dense_22/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_22/Tensordot/Prod_1В
dense_22/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_22/Tensordot/concat/axis▌
dense_22/Tensordot/concatConcatV2 dense_22/Tensordot/free:output:0 dense_22/Tensordot/axes:output:0'dense_22/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_22/Tensordot/concat░
dense_22/Tensordot/stackPack dense_22/Tensordot/Prod:output:0"dense_22/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_22/Tensordot/stack┴
dense_22/Tensordot/transpose	Transposedense_21/Relu:activations:0"dense_22/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
dense_22/Tensordot/transpose├
dense_22/Tensordot/ReshapeReshape dense_22/Tensordot/transpose:y:0!dense_22/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_22/Tensordot/Reshape┬
dense_22/Tensordot/MatMulMatMul#dense_22/Tensordot/Reshape:output:0)dense_22/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/Tensordot/MatMulВ
dense_22/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_22/Tensordot/Const_2Ж
 dense_22/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_22/Tensordot/concat_1/axisъ
dense_22/Tensordot/concat_1ConcatV2$dense_22/Tensordot/GatherV2:output:0#dense_22/Tensordot/Const_2:output:0)dense_22/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_22/Tensordot/concat_1╡
dense_22/TensordotReshape#dense_22/Tensordot/MatMul:product:0$dense_22/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
dense_22/Tensordotз
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_22/BiasAdd/ReadVariableOpм
dense_22/BiasAddBiasAdddense_22/Tensordot:output:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
dense_22/BiasAddx
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
dense_22/Relus
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"     N  2
flatten_5/ConstЬ
flatten_5/ReshapeReshapedense_22/Relu:activations:0flatten_5/Const:output:0*
T0*)
_output_shapes
:         аЬ2
flatten_5/Reshapeк
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource* 
_output_shapes
:
аЬ*
dtype02 
dense_23/MatMul/ReadVariableOpв
dense_23/MatMulMatMulflatten_5/Reshape:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/MatMulз
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpе
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_23/SoftmaxГ
IdentityIdentitydense_23/Softmax:softmax:0 ^dense_20/BiasAdd/ReadVariableOp"^dense_20/Tensordot/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp"^dense_21/Tensordot/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp"^dense_22/Tensordot/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         ░	::::::::2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2F
!dense_20/Tensordot/ReadVariableOp!dense_20/Tensordot/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2F
!dense_21/Tensordot/ReadVariableOp!dense_21/Tensordot/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2F
!dense_22/Tensordot/ReadVariableOp!dense_22/Tensordot/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:P L
(
_output_shapes
:         ░	
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╝
serving_defaultи
L
reshape_6_input9
!serving_default_reshape_6_input:0         ░	<
dense_230
StatefulPartitionedCall:0         tensorflow/serving/predict:з─
В.
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
	optimizer
regularization_losses
		variables

trainable_variables
	keras_api

signatures
p_default_save_signature
q__call__
*r&call_and_return_all_conditional_losses"Б+
_tf_keras_sequentialт*{"class_name": "Sequential", "name": "sequential_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "reshape_6_input"}}, {"class_name": "Reshape", "config": {"name": "reshape_6", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1200]}, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [200, 6]}}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1200]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "reshape_6_input"}}, {"class_name": "Reshape", "config": {"name": "reshape_6", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1200]}, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [200, 6]}}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
э
regularization_losses
	variables
trainable_variables
	keras_api
s__call__
*t&call_and_return_all_conditional_losses"▐
_tf_keras_layer─{"class_name": "Reshape", "name": "reshape_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1200]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_6", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1200]}, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [200, 6]}}}
Ў

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
u__call__
*v&call_and_return_all_conditional_losses"╤
_tf_keras_layer╖{"class_name": "Dense", "name": "dense_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 6}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 6]}}
·

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
w__call__
*x&call_and_return_all_conditional_losses"╒
_tf_keras_layer╗{"class_name": "Dense", "name": "dense_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 100]}}
·

kernel
bias
regularization_losses
 	variables
!trainable_variables
"	keras_api
y__call__
*z&call_and_return_all_conditional_losses"╒
_tf_keras_layer╗{"class_name": "Dense", "name": "dense_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 100]}}
ц
#regularization_losses
$	variables
%trainable_variables
&	keras_api
{__call__
*|&call_and_return_all_conditional_losses"╫
_tf_keras_layer╜{"class_name": "Flatten", "name": "flatten_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
·

'kernel
(bias
)regularization_losses
*	variables
+trainable_variables
,	keras_api
}__call__
*~&call_and_return_all_conditional_losses"╒
_tf_keras_layer╗{"class_name": "Dense", "name": "dense_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20000}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20000]}}
у
-iter

.beta_1

/beta_2
	0decay
1learning_ratem`mambmcmdme'mf(mgvhvivjvkvlvm'vn(vo"
	optimizer
 "
trackable_list_wrapper
X
0
1
2
3
4
5
'6
(7"
trackable_list_wrapper
X
0
1
2
3
4
5
'6
(7"
trackable_list_wrapper
╩

2layers
regularization_losses
3non_trainable_variables
		variables

trainable_variables
4metrics
5layer_metrics
6layer_regularization_losses
q__call__
p_default_save_signature
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
,
serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н

7layers
regularization_losses
8non_trainable_variables
	variables
trainable_variables
9metrics
:layer_metrics
;layer_regularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
!:d2dense_20/kernel
:d2dense_20/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
н

<layers
regularization_losses
=non_trainable_variables
	variables
trainable_variables
>metrics
?layer_metrics
@layer_regularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
!:dd2dense_21/kernel
:d2dense_21/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
н

Alayers
regularization_losses
Bnon_trainable_variables
	variables
trainable_variables
Cmetrics
Dlayer_metrics
Elayer_regularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
!:dd2dense_22/kernel
:d2dense_22/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
н

Flayers
regularization_losses
Gnon_trainable_variables
 	variables
!trainable_variables
Hmetrics
Ilayer_metrics
Jlayer_regularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н

Klayers
#regularization_losses
Lnon_trainable_variables
$	variables
%trainable_variables
Mmetrics
Nlayer_metrics
Olayer_regularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
#:!
аЬ2dense_23/kernel
:2dense_23/bias
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
н

Players
)regularization_losses
Qnon_trainable_variables
*	variables
+trainable_variables
Rmetrics
Slayer_metrics
Tlayer_regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
╗
	Wtotal
	Xcount
Y	variables
Z	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
 
	[total
	\count
]
_fn_kwargs
^	variables
_	keras_api"╕
_tf_keras_metricЭ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
.
W0
X1"
trackable_list_wrapper
-
Y	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
[0
\1"
trackable_list_wrapper
-
^	variables"
_generic_user_object
&:$d2Adam/dense_20/kernel/m
 :d2Adam/dense_20/bias/m
&:$dd2Adam/dense_21/kernel/m
 :d2Adam/dense_21/bias/m
&:$dd2Adam/dense_22/kernel/m
 :d2Adam/dense_22/bias/m
(:&
аЬ2Adam/dense_23/kernel/m
 :2Adam/dense_23/bias/m
&:$d2Adam/dense_20/kernel/v
 :d2Adam/dense_20/bias/v
&:$dd2Adam/dense_21/kernel/v
 :d2Adam/dense_21/bias/v
&:$dd2Adam/dense_22/kernel/v
 :d2Adam/dense_22/bias/v
(:&
аЬ2Adam/dense_23/kernel/v
 :2Adam/dense_23/bias/v
ч2ф
 __inference__wrapped_model_27196┐
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк */в,
*К'
reshape_6_input         ░	
■2√
,__inference_sequential_6_layer_call_fn_27478
,__inference_sequential_6_layer_call_fn_27804
,__inference_sequential_6_layer_call_fn_27525
,__inference_sequential_6_layer_call_fn_27783└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ъ2ч
G__inference_sequential_6_layer_call_and_return_conditional_losses_27659
G__inference_sequential_6_layer_call_and_return_conditional_losses_27430
G__inference_sequential_6_layer_call_and_return_conditional_losses_27762
G__inference_sequential_6_layer_call_and_return_conditional_losses_27404└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╙2╨
)__inference_reshape_6_layer_call_fn_27822в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
ю2ы
D__inference_reshape_6_layer_call_and_return_conditional_losses_27817в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
╥2╧
(__inference_dense_20_layer_call_fn_27862в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
э2ъ
C__inference_dense_20_layer_call_and_return_conditional_losses_27853в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
╥2╧
(__inference_dense_21_layer_call_fn_27902в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
э2ъ
C__inference_dense_21_layer_call_and_return_conditional_losses_27893в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
╥2╧
(__inference_dense_22_layer_call_fn_27942в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
э2ъ
C__inference_dense_22_layer_call_and_return_conditional_losses_27933в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
╙2╨
)__inference_flatten_5_layer_call_fn_27953в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
ю2ы
D__inference_flatten_5_layer_call_and_return_conditional_losses_27948в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
╥2╧
(__inference_dense_23_layer_call_fn_27973в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
э2ъ
C__inference_dense_23_layer_call_and_return_conditional_losses_27964в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
╥B╧
#__inference_signature_wrapper_27556reshape_6_input"Ф
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
 Ю
 __inference__wrapped_model_27196z'(9в6
/в,
*К'
reshape_6_input         ░	
к "3к0
.
dense_23"К
dense_23         н
C__inference_dense_20_layer_call_and_return_conditional_losses_27853f4в1
*в'
%К"
inputs         ╚
к "*в'
 К
0         ╚d
Ъ Е
(__inference_dense_20_layer_call_fn_27862Y4в1
*в'
%К"
inputs         ╚
к "К         ╚dн
C__inference_dense_21_layer_call_and_return_conditional_losses_27893f4в1
*в'
%К"
inputs         ╚d
к "*в'
 К
0         ╚d
Ъ Е
(__inference_dense_21_layer_call_fn_27902Y4в1
*в'
%К"
inputs         ╚d
к "К         ╚dн
C__inference_dense_22_layer_call_and_return_conditional_losses_27933f4в1
*в'
%К"
inputs         ╚d
к "*в'
 К
0         ╚d
Ъ Е
(__inference_dense_22_layer_call_fn_27942Y4в1
*в'
%К"
inputs         ╚d
к "К         ╚dе
C__inference_dense_23_layer_call_and_return_conditional_losses_27964^'(1в.
'в$
"К
inputs         аЬ
к "%в"
К
0         
Ъ }
(__inference_dense_23_layer_call_fn_27973Q'(1в.
'в$
"К
inputs         аЬ
к "К         з
D__inference_flatten_5_layer_call_and_return_conditional_losses_27948_4в1
*в'
%К"
inputs         ╚d
к "'в$
К
0         аЬ
Ъ 
)__inference_flatten_5_layer_call_fn_27953R4в1
*в'
%К"
inputs         ╚d
к "К         аЬж
D__inference_reshape_6_layer_call_and_return_conditional_losses_27817^0в-
&в#
!К
inputs         ░	
к "*в'
 К
0         ╚
Ъ ~
)__inference_reshape_6_layer_call_fn_27822Q0в-
&в#
!К
inputs         ░	
к "К         ╚┐
G__inference_sequential_6_layer_call_and_return_conditional_losses_27404t'(Aв>
7в4
*К'
reshape_6_input         ░	
p

 
к "%в"
К
0         
Ъ ┐
G__inference_sequential_6_layer_call_and_return_conditional_losses_27430t'(Aв>
7в4
*К'
reshape_6_input         ░	
p 

 
к "%в"
К
0         
Ъ ╢
G__inference_sequential_6_layer_call_and_return_conditional_losses_27659k'(8в5
.в+
!К
inputs         ░	
p

 
к "%в"
К
0         
Ъ ╢
G__inference_sequential_6_layer_call_and_return_conditional_losses_27762k'(8в5
.в+
!К
inputs         ░	
p 

 
к "%в"
К
0         
Ъ Ч
,__inference_sequential_6_layer_call_fn_27478g'(Aв>
7в4
*К'
reshape_6_input         ░	
p

 
к "К         Ч
,__inference_sequential_6_layer_call_fn_27525g'(Aв>
7в4
*К'
reshape_6_input         ░	
p 

 
к "К         О
,__inference_sequential_6_layer_call_fn_27783^'(8в5
.в+
!К
inputs         ░	
p

 
к "К         О
,__inference_sequential_6_layer_call_fn_27804^'(8в5
.в+
!К
inputs         ░	
p 

 
к "К         ╡
#__inference_signature_wrapper_27556Н'(LвI
в 
Bк?
=
reshape_6_input*К'
reshape_6_input         ░	"3к0
.
dense_23"К
dense_23         