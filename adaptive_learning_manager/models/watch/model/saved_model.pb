█Ц
їР
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
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
Г
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
delete_old_dirsbool(ѕ
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
Ї
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
Й
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
executor_typestring ѕ
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.4.02v2.4.0-0-g582c8d236cb8Х╔	
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:d*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:d*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:dd*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:d*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd* 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:dd*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:d*
dtype0
|
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
аю* 
shared_namedense_15/kernel
u
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel* 
_output_shapes
:
аю*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
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
ѕ
Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_12/kernel/m
Ђ
*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes

:d*
dtype0
ђ
Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
:d*
dtype0
ѕ
Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_13/kernel/m
Ђ
*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes

:dd*
dtype0
ђ
Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
:d*
dtype0
ѕ
Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_14/kernel/m
Ђ
*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m*
_output_shapes

:dd*
dtype0
ђ
Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_14/bias/m
y
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes
:d*
dtype0
і
Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
аю*'
shared_nameAdam/dense_15/kernel/m
Ѓ
*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m* 
_output_shapes
:
аю*
dtype0
ђ
Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/m
y
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes
:*
dtype0
ѕ
Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_12/kernel/v
Ђ
*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes

:d*
dtype0
ђ
Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
:d*
dtype0
ѕ
Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_13/kernel/v
Ђ
*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes

:dd*
dtype0
ђ
Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
:d*
dtype0
ѕ
Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_14/kernel/v
Ђ
*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v*
_output_shapes

:dd*
dtype0
ђ
Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_14/bias/v
y
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes
:d*
dtype0
і
Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
аю*'
shared_nameAdam/dense_15/kernel/v
Ѓ
*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v* 
_output_shapes
:
аю*
dtype0
ђ
Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/v
y
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
╬2
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ѕ2
value 1BЧ1 Bш1
Д
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
trainable_variables
		variables

regularization_losses
	keras_api

signatures
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
R
#trainable_variables
$	variables
%regularization_losses
&	keras_api
h

'kernel
(bias
)trainable_variables
*	variables
+regularization_losses
,	keras_api
л
-iter

.beta_1

/beta_2
	0decay
1learning_ratem`mambmcmdme'mf(mgvhvivjvkvlvm'vn(vo
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
 
Г
trainable_variables
2layer_regularization_losses
		variables

regularization_losses

3layers
4metrics
5non_trainable_variables
6layer_metrics
 
 
 
 
Г
trainable_variables
7layer_regularization_losses
	variables
regularization_losses

8layers
9metrics
:non_trainable_variables
;layer_metrics
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Г
trainable_variables
<layer_regularization_losses
	variables
regularization_losses

=layers
>metrics
?non_trainable_variables
@layer_metrics
[Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_13/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Г
trainable_variables
Alayer_regularization_losses
	variables
regularization_losses

Blayers
Cmetrics
Dnon_trainable_variables
Elayer_metrics
[Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_14/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Г
trainable_variables
Flayer_regularization_losses
 	variables
!regularization_losses

Glayers
Hmetrics
Inon_trainable_variables
Jlayer_metrics
 
 
 
Г
#trainable_variables
Klayer_regularization_losses
$	variables
%regularization_losses

Llayers
Mmetrics
Nnon_trainable_variables
Olayer_metrics
[Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_15/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1

'0
(1
 
Г
)trainable_variables
Player_regularization_losses
*	variables
+regularization_losses

Qlayers
Rmetrics
Snon_trainable_variables
Tlayer_metrics
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
 
*
0
1
2
3
4
5
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
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_15/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_15/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_15/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_15/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ё
serving_default_reshape_1_inputPlaceholder*(
_output_shapes
:         п*
dtype0*
shape:         п
╔
StatefulPartitionedCallStatefulPartitionedCallserving_default_reshape_1_inputdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/bias*
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
GPU 2J 8ѓ *,
f'R%
#__inference_signature_wrapper_35433
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ц
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOpConst*.
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
GPU 2J 8ѓ *'
f"R 
__inference__traced_save_35972
І
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/mAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/dense_15/kernel/mAdam/dense_15/bias/mAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/vAdam/dense_14/kernel/vAdam/dense_14/bias/vAdam/dense_15/kernel/vAdam/dense_15/bias/v*-
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
GPU 2J 8ѓ **
f%R#
!__inference__traced_restore_36081ъ└
и 
Р
C__inference_dense_14_layer_call_and_return_conditional_losses_35223

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpќ
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
Tensordot/GatherV2/axisЛ
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
Tensordot/GatherV2_1/axisО
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
Tensordot/Constђ
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
Tensordot/Const_1ѕ
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
Tensordot/concatї
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackЉ
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
Tensordot/transposeЪ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/Reshapeъ
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
Tensordot/concat_1/axisй
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Љ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
	Tensordotї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
ReluЪ
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
је
б
 __inference__wrapped_model_35073
reshape_1_input;
7sequential_3_dense_12_tensordot_readvariableop_resource9
5sequential_3_dense_12_biasadd_readvariableop_resource;
7sequential_3_dense_13_tensordot_readvariableop_resource9
5sequential_3_dense_13_biasadd_readvariableop_resource;
7sequential_3_dense_14_tensordot_readvariableop_resource9
5sequential_3_dense_14_biasadd_readvariableop_resource8
4sequential_3_dense_15_matmul_readvariableop_resource9
5sequential_3_dense_15_biasadd_readvariableop_resource
identityѕб,sequential_3/dense_12/BiasAdd/ReadVariableOpб.sequential_3/dense_12/Tensordot/ReadVariableOpб,sequential_3/dense_13/BiasAdd/ReadVariableOpб.sequential_3/dense_13/Tensordot/ReadVariableOpб,sequential_3/dense_14/BiasAdd/ReadVariableOpб.sequential_3/dense_14/Tensordot/ReadVariableOpб,sequential_3/dense_15/BiasAdd/ReadVariableOpб+sequential_3/dense_15/MatMul/ReadVariableOp{
sequential_3/reshape_1/ShapeShapereshape_1_input*
T0*
_output_shapes
:2
sequential_3/reshape_1/Shapeб
*sequential_3/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_3/reshape_1/strided_slice/stackд
,sequential_3/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/reshape_1/strided_slice/stack_1д
,sequential_3/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/reshape_1/strided_slice/stack_2В
$sequential_3/reshape_1/strided_sliceStridedSlice%sequential_3/reshape_1/Shape:output:03sequential_3/reshape_1/strided_slice/stack:output:05sequential_3/reshape_1/strided_slice/stack_1:output:05sequential_3/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_3/reshape_1/strided_sliceЊ
&sequential_3/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :╚2(
&sequential_3/reshape_1/Reshape/shape/1њ
&sequential_3/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_3/reshape_1/Reshape/shape/2Њ
$sequential_3/reshape_1/Reshape/shapePack-sequential_3/reshape_1/strided_slice:output:0/sequential_3/reshape_1/Reshape/shape/1:output:0/sequential_3/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$sequential_3/reshape_1/Reshape/shape┬
sequential_3/reshape_1/ReshapeReshapereshape_1_input-sequential_3/reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:         ╚2 
sequential_3/reshape_1/Reshapeп
.sequential_3/dense_12/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_12_tensordot_readvariableop_resource*
_output_shapes

:d*
dtype020
.sequential_3/dense_12/Tensordot/ReadVariableOpќ
$sequential_3/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_3/dense_12/Tensordot/axesЮ
$sequential_3/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_3/dense_12/Tensordot/freeЦ
%sequential_3/dense_12/Tensordot/ShapeShape'sequential_3/reshape_1/Reshape:output:0*
T0*
_output_shapes
:2'
%sequential_3/dense_12/Tensordot/Shapeа
-sequential_3/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_12/Tensordot/GatherV2/axis┐
(sequential_3/dense_12/Tensordot/GatherV2GatherV2.sequential_3/dense_12/Tensordot/Shape:output:0-sequential_3/dense_12/Tensordot/free:output:06sequential_3/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_3/dense_12/Tensordot/GatherV2ц
/sequential_3/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_3/dense_12/Tensordot/GatherV2_1/axis┼
*sequential_3/dense_12/Tensordot/GatherV2_1GatherV2.sequential_3/dense_12/Tensordot/Shape:output:0-sequential_3/dense_12/Tensordot/axes:output:08sequential_3/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_3/dense_12/Tensordot/GatherV2_1ў
%sequential_3/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_3/dense_12/Tensordot/Constп
$sequential_3/dense_12/Tensordot/ProdProd1sequential_3/dense_12/Tensordot/GatherV2:output:0.sequential_3/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_3/dense_12/Tensordot/Prodю
'sequential_3/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_12/Tensordot/Const_1Я
&sequential_3/dense_12/Tensordot/Prod_1Prod3sequential_3/dense_12/Tensordot/GatherV2_1:output:00sequential_3/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_3/dense_12/Tensordot/Prod_1ю
+sequential_3/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_3/dense_12/Tensordot/concat/axisъ
&sequential_3/dense_12/Tensordot/concatConcatV2-sequential_3/dense_12/Tensordot/free:output:0-sequential_3/dense_12/Tensordot/axes:output:04sequential_3/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_3/dense_12/Tensordot/concatС
%sequential_3/dense_12/Tensordot/stackPack-sequential_3/dense_12/Tensordot/Prod:output:0/sequential_3/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_12/Tensordot/stackЗ
)sequential_3/dense_12/Tensordot/transpose	Transpose'sequential_3/reshape_1/Reshape:output:0/sequential_3/dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚2+
)sequential_3/dense_12/Tensordot/transposeэ
'sequential_3/dense_12/Tensordot/ReshapeReshape-sequential_3/dense_12/Tensordot/transpose:y:0.sequential_3/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2)
'sequential_3/dense_12/Tensordot/ReshapeШ
&sequential_3/dense_12/Tensordot/MatMulMatMul0sequential_3/dense_12/Tensordot/Reshape:output:06sequential_3/dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2(
&sequential_3/dense_12/Tensordot/MatMulю
'sequential_3/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2)
'sequential_3/dense_12/Tensordot/Const_2а
-sequential_3/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_12/Tensordot/concat_1/axisФ
(sequential_3/dense_12/Tensordot/concat_1ConcatV21sequential_3/dense_12/Tensordot/GatherV2:output:00sequential_3/dense_12/Tensordot/Const_2:output:06sequential_3/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_3/dense_12/Tensordot/concat_1ж
sequential_3/dense_12/TensordotReshape0sequential_3/dense_12/Tensordot/MatMul:product:01sequential_3/dense_12/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2!
sequential_3/dense_12/Tensordot╬
,sequential_3/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_12_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02.
,sequential_3/dense_12/BiasAdd/ReadVariableOpЯ
sequential_3/dense_12/BiasAddBiasAdd(sequential_3/dense_12/Tensordot:output:04sequential_3/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
sequential_3/dense_12/BiasAddЪ
sequential_3/dense_12/ReluRelu&sequential_3/dense_12/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
sequential_3/dense_12/Reluп
.sequential_3/dense_13/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_13_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype020
.sequential_3/dense_13/Tensordot/ReadVariableOpќ
$sequential_3/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_3/dense_13/Tensordot/axesЮ
$sequential_3/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_3/dense_13/Tensordot/freeд
%sequential_3/dense_13/Tensordot/ShapeShape(sequential_3/dense_12/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_3/dense_13/Tensordot/Shapeа
-sequential_3/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_13/Tensordot/GatherV2/axis┐
(sequential_3/dense_13/Tensordot/GatherV2GatherV2.sequential_3/dense_13/Tensordot/Shape:output:0-sequential_3/dense_13/Tensordot/free:output:06sequential_3/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_3/dense_13/Tensordot/GatherV2ц
/sequential_3/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_3/dense_13/Tensordot/GatherV2_1/axis┼
*sequential_3/dense_13/Tensordot/GatherV2_1GatherV2.sequential_3/dense_13/Tensordot/Shape:output:0-sequential_3/dense_13/Tensordot/axes:output:08sequential_3/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_3/dense_13/Tensordot/GatherV2_1ў
%sequential_3/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_3/dense_13/Tensordot/Constп
$sequential_3/dense_13/Tensordot/ProdProd1sequential_3/dense_13/Tensordot/GatherV2:output:0.sequential_3/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_3/dense_13/Tensordot/Prodю
'sequential_3/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_13/Tensordot/Const_1Я
&sequential_3/dense_13/Tensordot/Prod_1Prod3sequential_3/dense_13/Tensordot/GatherV2_1:output:00sequential_3/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_3/dense_13/Tensordot/Prod_1ю
+sequential_3/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_3/dense_13/Tensordot/concat/axisъ
&sequential_3/dense_13/Tensordot/concatConcatV2-sequential_3/dense_13/Tensordot/free:output:0-sequential_3/dense_13/Tensordot/axes:output:04sequential_3/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_3/dense_13/Tensordot/concatС
%sequential_3/dense_13/Tensordot/stackPack-sequential_3/dense_13/Tensordot/Prod:output:0/sequential_3/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_13/Tensordot/stackш
)sequential_3/dense_13/Tensordot/transpose	Transpose(sequential_3/dense_12/Relu:activations:0/sequential_3/dense_13/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2+
)sequential_3/dense_13/Tensordot/transposeэ
'sequential_3/dense_13/Tensordot/ReshapeReshape-sequential_3/dense_13/Tensordot/transpose:y:0.sequential_3/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2)
'sequential_3/dense_13/Tensordot/ReshapeШ
&sequential_3/dense_13/Tensordot/MatMulMatMul0sequential_3/dense_13/Tensordot/Reshape:output:06sequential_3/dense_13/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2(
&sequential_3/dense_13/Tensordot/MatMulю
'sequential_3/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2)
'sequential_3/dense_13/Tensordot/Const_2а
-sequential_3/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_13/Tensordot/concat_1/axisФ
(sequential_3/dense_13/Tensordot/concat_1ConcatV21sequential_3/dense_13/Tensordot/GatherV2:output:00sequential_3/dense_13/Tensordot/Const_2:output:06sequential_3/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_3/dense_13/Tensordot/concat_1ж
sequential_3/dense_13/TensordotReshape0sequential_3/dense_13/Tensordot/MatMul:product:01sequential_3/dense_13/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2!
sequential_3/dense_13/Tensordot╬
,sequential_3/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_13_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02.
,sequential_3/dense_13/BiasAdd/ReadVariableOpЯ
sequential_3/dense_13/BiasAddBiasAdd(sequential_3/dense_13/Tensordot:output:04sequential_3/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
sequential_3/dense_13/BiasAddЪ
sequential_3/dense_13/ReluRelu&sequential_3/dense_13/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
sequential_3/dense_13/Reluп
.sequential_3/dense_14/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_14_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype020
.sequential_3/dense_14/Tensordot/ReadVariableOpќ
$sequential_3/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_3/dense_14/Tensordot/axesЮ
$sequential_3/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_3/dense_14/Tensordot/freeд
%sequential_3/dense_14/Tensordot/ShapeShape(sequential_3/dense_13/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_3/dense_14/Tensordot/Shapeа
-sequential_3/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_14/Tensordot/GatherV2/axis┐
(sequential_3/dense_14/Tensordot/GatherV2GatherV2.sequential_3/dense_14/Tensordot/Shape:output:0-sequential_3/dense_14/Tensordot/free:output:06sequential_3/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_3/dense_14/Tensordot/GatherV2ц
/sequential_3/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_3/dense_14/Tensordot/GatherV2_1/axis┼
*sequential_3/dense_14/Tensordot/GatherV2_1GatherV2.sequential_3/dense_14/Tensordot/Shape:output:0-sequential_3/dense_14/Tensordot/axes:output:08sequential_3/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_3/dense_14/Tensordot/GatherV2_1ў
%sequential_3/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_3/dense_14/Tensordot/Constп
$sequential_3/dense_14/Tensordot/ProdProd1sequential_3/dense_14/Tensordot/GatherV2:output:0.sequential_3/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_3/dense_14/Tensordot/Prodю
'sequential_3/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_14/Tensordot/Const_1Я
&sequential_3/dense_14/Tensordot/Prod_1Prod3sequential_3/dense_14/Tensordot/GatherV2_1:output:00sequential_3/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_3/dense_14/Tensordot/Prod_1ю
+sequential_3/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_3/dense_14/Tensordot/concat/axisъ
&sequential_3/dense_14/Tensordot/concatConcatV2-sequential_3/dense_14/Tensordot/free:output:0-sequential_3/dense_14/Tensordot/axes:output:04sequential_3/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_3/dense_14/Tensordot/concatС
%sequential_3/dense_14/Tensordot/stackPack-sequential_3/dense_14/Tensordot/Prod:output:0/sequential_3/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_14/Tensordot/stackш
)sequential_3/dense_14/Tensordot/transpose	Transpose(sequential_3/dense_13/Relu:activations:0/sequential_3/dense_14/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2+
)sequential_3/dense_14/Tensordot/transposeэ
'sequential_3/dense_14/Tensordot/ReshapeReshape-sequential_3/dense_14/Tensordot/transpose:y:0.sequential_3/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2)
'sequential_3/dense_14/Tensordot/ReshapeШ
&sequential_3/dense_14/Tensordot/MatMulMatMul0sequential_3/dense_14/Tensordot/Reshape:output:06sequential_3/dense_14/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2(
&sequential_3/dense_14/Tensordot/MatMulю
'sequential_3/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2)
'sequential_3/dense_14/Tensordot/Const_2а
-sequential_3/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_14/Tensordot/concat_1/axisФ
(sequential_3/dense_14/Tensordot/concat_1ConcatV21sequential_3/dense_14/Tensordot/GatherV2:output:00sequential_3/dense_14/Tensordot/Const_2:output:06sequential_3/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_3/dense_14/Tensordot/concat_1ж
sequential_3/dense_14/TensordotReshape0sequential_3/dense_14/Tensordot/MatMul:product:01sequential_3/dense_14/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2!
sequential_3/dense_14/Tensordot╬
,sequential_3/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_14_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02.
,sequential_3/dense_14/BiasAdd/ReadVariableOpЯ
sequential_3/dense_14/BiasAddBiasAdd(sequential_3/dense_14/Tensordot:output:04sequential_3/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
sequential_3/dense_14/BiasAddЪ
sequential_3/dense_14/ReluRelu&sequential_3/dense_14/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
sequential_3/dense_14/ReluЇ
sequential_3/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"     N  2
sequential_3/flatten_1/Constл
sequential_3/flatten_1/ReshapeReshape(sequential_3/dense_14/Relu:activations:0%sequential_3/flatten_1/Const:output:0*
T0*)
_output_shapes
:         аю2 
sequential_3/flatten_1/ReshapeЛ
+sequential_3/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_15_matmul_readvariableop_resource* 
_output_shapes
:
аю*
dtype02-
+sequential_3/dense_15/MatMul/ReadVariableOpо
sequential_3/dense_15/MatMulMatMul'sequential_3/flatten_1/Reshape:output:03sequential_3/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_3/dense_15/MatMul╬
,sequential_3/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_3/dense_15/BiasAdd/ReadVariableOp┘
sequential_3/dense_15/BiasAddBiasAdd&sequential_3/dense_15/MatMul:product:04sequential_3/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_3/dense_15/BiasAddБ
sequential_3/dense_15/SoftmaxSoftmax&sequential_3/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:         2
sequential_3/dense_15/SoftmaxЭ
IdentityIdentity'sequential_3/dense_15/Softmax:softmax:0-^sequential_3/dense_12/BiasAdd/ReadVariableOp/^sequential_3/dense_12/Tensordot/ReadVariableOp-^sequential_3/dense_13/BiasAdd/ReadVariableOp/^sequential_3/dense_13/Tensordot/ReadVariableOp-^sequential_3/dense_14/BiasAdd/ReadVariableOp/^sequential_3/dense_14/Tensordot/ReadVariableOp-^sequential_3/dense_15/BiasAdd/ReadVariableOp,^sequential_3/dense_15/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         п::::::::2\
,sequential_3/dense_12/BiasAdd/ReadVariableOp,sequential_3/dense_12/BiasAdd/ReadVariableOp2`
.sequential_3/dense_12/Tensordot/ReadVariableOp.sequential_3/dense_12/Tensordot/ReadVariableOp2\
,sequential_3/dense_13/BiasAdd/ReadVariableOp,sequential_3/dense_13/BiasAdd/ReadVariableOp2`
.sequential_3/dense_13/Tensordot/ReadVariableOp.sequential_3/dense_13/Tensordot/ReadVariableOp2\
,sequential_3/dense_14/BiasAdd/ReadVariableOp,sequential_3/dense_14/BiasAdd/ReadVariableOp2`
.sequential_3/dense_14/Tensordot/ReadVariableOp.sequential_3/dense_14/Tensordot/ReadVariableOp2\
,sequential_3/dense_15/BiasAdd/ReadVariableOp,sequential_3/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_15/MatMul/ReadVariableOp+sequential_3/dense_15/MatMul/ReadVariableOp:Y U
(
_output_shapes
:         п
)
_user_specified_namereshape_1_input
ч	
▄
C__inference_dense_15_layer_call_and_return_conditional_losses_35264

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
аю*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Softmaxќ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*0
_input_shapes
:         аю::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         аю
 
_user_specified_nameinputs
И
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_35245

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
:         аю2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         аю2

Identity"
identityIdentity:output:0*+
_input_shapes
:         ╚d:T P
,
_output_shapes
:         ╚d
 
_user_specified_nameinputs
И
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_35825

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
:         аю2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         аю2

Identity"
identityIdentity:output:0*+
_input_shapes
:         ╚d:T P
,
_output_shapes
:         ╚d
 
_user_specified_nameinputs
г
њ
G__inference_sequential_3_layer_call_and_return_conditional_losses_35336

inputs
dense_12_35314
dense_12_35316
dense_13_35319
dense_13_35321
dense_14_35324
dense_14_35326
dense_15_35330
dense_15_35332
identityѕб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб dense_14/StatefulPartitionedCallб dense_15/StatefulPartitionedCall█
reshape_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_350902
reshape_1/PartitionedCall▓
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0dense_12_35314dense_12_35316*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_351292"
 dense_12/StatefulPartitionedCall╣
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_35319dense_13_35321*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_351762"
 dense_13/StatefulPartitionedCall╣
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_35324dense_14_35326*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_352232"
 dense_14/StatefulPartitionedCallч
flatten_1/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         аю* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_352452
flatten_1/PartitionedCallГ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_15_35330dense_15_35332*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_352642"
 dense_15/StatefulPartitionedCallЅ
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         п::::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:P L
(
_output_shapes
:         п
 
_user_specified_nameinputs
Ь
}
(__inference_dense_14_layer_call_fn_35819

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЭ
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_352232
StatefulPartitionedCallЊ
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
└
С
,__inference_sequential_3_layer_call_fn_35355
reshape_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCall╬
StatefulPartitionedCallStatefulPartitionedCallreshape_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU 2J 8ѓ *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_353362
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         п::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:         п
)
_user_specified_namereshape_1_input
ыЁ
­
G__inference_sequential_3_layer_call_and_return_conditional_losses_35639

inputs.
*dense_12_tensordot_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource.
*dense_13_tensordot_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource.
*dense_14_tensordot_readvariableop_resource,
(dense_14_biasadd_readvariableop_resource+
'dense_15_matmul_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource
identityѕбdense_12/BiasAdd/ReadVariableOpб!dense_12/Tensordot/ReadVariableOpбdense_13/BiasAdd/ReadVariableOpб!dense_13/Tensordot/ReadVariableOpбdense_14/BiasAdd/ReadVariableOpб!dense_14/Tensordot/ReadVariableOpбdense_15/BiasAdd/ReadVariableOpбdense_15/MatMul/ReadVariableOpX
reshape_1/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape_1/Shapeѕ
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_1/strided_slice/stackї
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_1ї
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_2ъ
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_1/strided_slicey
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :╚2
reshape_1/Reshape/shape/1x
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/2м
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_1/Reshape/shapeњ
reshape_1/ReshapeReshapeinputs reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:         ╚2
reshape_1/Reshape▒
!dense_12/Tensordot/ReadVariableOpReadVariableOp*dense_12_tensordot_readvariableop_resource*
_output_shapes

:d*
dtype02#
!dense_12/Tensordot/ReadVariableOp|
dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_12/Tensordot/axesЃ
dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_12/Tensordot/free~
dense_12/Tensordot/ShapeShapereshape_1/Reshape:output:0*
T0*
_output_shapes
:2
dense_12/Tensordot/Shapeє
 dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_12/Tensordot/GatherV2/axis■
dense_12/Tensordot/GatherV2GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/free:output:0)dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_12/Tensordot/GatherV2і
"dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_12/Tensordot/GatherV2_1/axisё
dense_12/Tensordot/GatherV2_1GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/axes:output:0+dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_12/Tensordot/GatherV2_1~
dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_12/Tensordot/Constц
dense_12/Tensordot/ProdProd$dense_12/Tensordot/GatherV2:output:0!dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_12/Tensordot/Prodѓ
dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_12/Tensordot/Const_1г
dense_12/Tensordot/Prod_1Prod&dense_12/Tensordot/GatherV2_1:output:0#dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_12/Tensordot/Prod_1ѓ
dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_12/Tensordot/concat/axisП
dense_12/Tensordot/concatConcatV2 dense_12/Tensordot/free:output:0 dense_12/Tensordot/axes:output:0'dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/concat░
dense_12/Tensordot/stackPack dense_12/Tensordot/Prod:output:0"dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/stack└
dense_12/Tensordot/transpose	Transposereshape_1/Reshape:output:0"dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚2
dense_12/Tensordot/transpose├
dense_12/Tensordot/ReshapeReshape dense_12/Tensordot/transpose:y:0!dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_12/Tensordot/Reshape┬
dense_12/Tensordot/MatMulMatMul#dense_12/Tensordot/Reshape:output:0)dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_12/Tensordot/MatMulѓ
dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_12/Tensordot/Const_2є
 dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_12/Tensordot/concat_1/axisЖ
dense_12/Tensordot/concat_1ConcatV2$dense_12/Tensordot/GatherV2:output:0#dense_12/Tensordot/Const_2:output:0)dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/concat_1х
dense_12/TensordotReshape#dense_12/Tensordot/MatMul:product:0$dense_12/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
dense_12/TensordotД
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_12/BiasAdd/ReadVariableOpг
dense_12/BiasAddBiasAdddense_12/Tensordot:output:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
dense_12/BiasAddx
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
dense_12/Relu▒
!dense_13/Tensordot/ReadVariableOpReadVariableOp*dense_13_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype02#
!dense_13/Tensordot/ReadVariableOp|
dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_13/Tensordot/axesЃ
dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_13/Tensordot/free
dense_13/Tensordot/ShapeShapedense_12/Relu:activations:0*
T0*
_output_shapes
:2
dense_13/Tensordot/Shapeє
 dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_13/Tensordot/GatherV2/axis■
dense_13/Tensordot/GatherV2GatherV2!dense_13/Tensordot/Shape:output:0 dense_13/Tensordot/free:output:0)dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_13/Tensordot/GatherV2і
"dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_13/Tensordot/GatherV2_1/axisё
dense_13/Tensordot/GatherV2_1GatherV2!dense_13/Tensordot/Shape:output:0 dense_13/Tensordot/axes:output:0+dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_13/Tensordot/GatherV2_1~
dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_13/Tensordot/Constц
dense_13/Tensordot/ProdProd$dense_13/Tensordot/GatherV2:output:0!dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_13/Tensordot/Prodѓ
dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_13/Tensordot/Const_1г
dense_13/Tensordot/Prod_1Prod&dense_13/Tensordot/GatherV2_1:output:0#dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_13/Tensordot/Prod_1ѓ
dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_13/Tensordot/concat/axisП
dense_13/Tensordot/concatConcatV2 dense_13/Tensordot/free:output:0 dense_13/Tensordot/axes:output:0'dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_13/Tensordot/concat░
dense_13/Tensordot/stackPack dense_13/Tensordot/Prod:output:0"dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_13/Tensordot/stack┴
dense_13/Tensordot/transpose	Transposedense_12/Relu:activations:0"dense_13/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
dense_13/Tensordot/transpose├
dense_13/Tensordot/ReshapeReshape dense_13/Tensordot/transpose:y:0!dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_13/Tensordot/Reshape┬
dense_13/Tensordot/MatMulMatMul#dense_13/Tensordot/Reshape:output:0)dense_13/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_13/Tensordot/MatMulѓ
dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_13/Tensordot/Const_2є
 dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_13/Tensordot/concat_1/axisЖ
dense_13/Tensordot/concat_1ConcatV2$dense_13/Tensordot/GatherV2:output:0#dense_13/Tensordot/Const_2:output:0)dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_13/Tensordot/concat_1х
dense_13/TensordotReshape#dense_13/Tensordot/MatMul:product:0$dense_13/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
dense_13/TensordotД
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_13/BiasAdd/ReadVariableOpг
dense_13/BiasAddBiasAdddense_13/Tensordot:output:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
dense_13/BiasAddx
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
dense_13/Relu▒
!dense_14/Tensordot/ReadVariableOpReadVariableOp*dense_14_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype02#
!dense_14/Tensordot/ReadVariableOp|
dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_14/Tensordot/axesЃ
dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_14/Tensordot/free
dense_14/Tensordot/ShapeShapedense_13/Relu:activations:0*
T0*
_output_shapes
:2
dense_14/Tensordot/Shapeє
 dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_14/Tensordot/GatherV2/axis■
dense_14/Tensordot/GatherV2GatherV2!dense_14/Tensordot/Shape:output:0 dense_14/Tensordot/free:output:0)dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_14/Tensordot/GatherV2і
"dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_14/Tensordot/GatherV2_1/axisё
dense_14/Tensordot/GatherV2_1GatherV2!dense_14/Tensordot/Shape:output:0 dense_14/Tensordot/axes:output:0+dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_14/Tensordot/GatherV2_1~
dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_14/Tensordot/Constц
dense_14/Tensordot/ProdProd$dense_14/Tensordot/GatherV2:output:0!dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_14/Tensordot/Prodѓ
dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_14/Tensordot/Const_1г
dense_14/Tensordot/Prod_1Prod&dense_14/Tensordot/GatherV2_1:output:0#dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_14/Tensordot/Prod_1ѓ
dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_14/Tensordot/concat/axisП
dense_14/Tensordot/concatConcatV2 dense_14/Tensordot/free:output:0 dense_14/Tensordot/axes:output:0'dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_14/Tensordot/concat░
dense_14/Tensordot/stackPack dense_14/Tensordot/Prod:output:0"dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_14/Tensordot/stack┴
dense_14/Tensordot/transpose	Transposedense_13/Relu:activations:0"dense_14/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
dense_14/Tensordot/transpose├
dense_14/Tensordot/ReshapeReshape dense_14/Tensordot/transpose:y:0!dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_14/Tensordot/Reshape┬
dense_14/Tensordot/MatMulMatMul#dense_14/Tensordot/Reshape:output:0)dense_14/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_14/Tensordot/MatMulѓ
dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_14/Tensordot/Const_2є
 dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_14/Tensordot/concat_1/axisЖ
dense_14/Tensordot/concat_1ConcatV2$dense_14/Tensordot/GatherV2:output:0#dense_14/Tensordot/Const_2:output:0)dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_14/Tensordot/concat_1х
dense_14/TensordotReshape#dense_14/Tensordot/MatMul:product:0$dense_14/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
dense_14/TensordotД
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_14/BiasAdd/ReadVariableOpг
dense_14/BiasAddBiasAdddense_14/Tensordot:output:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
dense_14/BiasAddx
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
dense_14/Relus
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"     N  2
flatten_1/Constю
flatten_1/ReshapeReshapedense_14/Relu:activations:0flatten_1/Const:output:0*
T0*)
_output_shapes
:         аю2
flatten_1/Reshapeф
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource* 
_output_shapes
:
аю*
dtype02 
dense_15/MatMul/ReadVariableOpб
dense_15/MatMulMatMulflatten_1/Reshape:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_15/MatMulД
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOpЦ
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_15/BiasAdd|
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_15/SoftmaxЃ
IdentityIdentitydense_15/Softmax:softmax:0 ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp"^dense_13/Tensordot/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp"^dense_14/Tensordot/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         п::::::::2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2F
!dense_12/Tensordot/ReadVariableOp!dense_12/Tensordot/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2F
!dense_13/Tensordot/ReadVariableOp!dense_13/Tensordot/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2F
!dense_14/Tensordot/ReadVariableOp!dense_14/Tensordot/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:P L
(
_output_shapes
:         п
 
_user_specified_nameinputs
Ь
}
(__inference_dense_12_layer_call_fn_35739

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЭ
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_351292
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         ╚d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         ╚::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ╚
 
_user_specified_nameinputs
Ц
█
,__inference_sequential_3_layer_call_fn_35660

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCall┼
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
GPU 2J 8ѓ *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_353362
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         п::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         п
 
_user_specified_nameinputs
и 
Р
C__inference_dense_13_layer_call_and_return_conditional_losses_35770

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpќ
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
Tensordot/GatherV2/axisЛ
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
Tensordot/GatherV2_1/axisО
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
Tensordot/Constђ
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
Tensordot/Const_1ѕ
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
Tensordot/concatї
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackЉ
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
Tensordot/transposeЪ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/Reshapeъ
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
Tensordot/concat_1/axisй
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Љ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
	Tensordotї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
ReluЪ
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
я
}
(__inference_dense_15_layer_call_fn_35850

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallз
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_352642
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*0
_input_shapes
:         аю::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         аю
 
_user_specified_nameinputs
Ь
}
(__inference_dense_13_layer_call_fn_35779

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЭ
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_351762
StatefulPartitionedCallЊ
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
и 
Р
C__inference_dense_12_layer_call_and_return_conditional_losses_35129

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpќ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:d*
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
Tensordot/GatherV2/axisЛ
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
Tensordot/GatherV2_1/axisО
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
Tensordot/Constђ
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
Tensordot/Const_1ѕ
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
Tensordot/concatї
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackЉ
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ╚2
Tensordot/transposeЪ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/Reshapeъ
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
Tensordot/concat_1/axisй
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Љ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
	Tensordotї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
ReluЪ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         ╚d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         ╚::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         ╚
 
_user_specified_nameinputs
Р
`
D__inference_reshape_1_layer_call_and_return_conditional_losses_35090

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
strided_slice/stack_2Р
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
value	B :2
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
:         ╚2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*'
_input_shapes
:         п:P L
(
_output_shapes
:         п
 
_user_specified_nameinputs
К
Џ
G__inference_sequential_3_layer_call_and_return_conditional_losses_35307
reshape_1_input
dense_12_35285
dense_12_35287
dense_13_35290
dense_13_35292
dense_14_35295
dense_14_35297
dense_15_35301
dense_15_35303
identityѕб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб dense_14/StatefulPartitionedCallб dense_15/StatefulPartitionedCallС
reshape_1/PartitionedCallPartitionedCallreshape_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_350902
reshape_1/PartitionedCall▓
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0dense_12_35285dense_12_35287*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_351292"
 dense_12/StatefulPartitionedCall╣
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_35290dense_13_35292*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_351762"
 dense_13/StatefulPartitionedCall╣
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_35295dense_14_35297*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_352232"
 dense_14/StatefulPartitionedCallч
flatten_1/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         аю* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_352452
flatten_1/PartitionedCallГ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_15_35301dense_15_35303*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_352642"
 dense_15/StatefulPartitionedCallЅ
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         п::::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:Y U
(
_output_shapes
:         п
)
_user_specified_namereshape_1_input
љ
█
#__inference_signature_wrapper_35433
reshape_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallreshape_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU 2J 8ѓ *)
f$R"
 __inference__wrapped_model_350732
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         п::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:         п
)
_user_specified_namereshape_1_input
г
њ
G__inference_sequential_3_layer_call_and_return_conditional_losses_35383

inputs
dense_12_35361
dense_12_35363
dense_13_35366
dense_13_35368
dense_14_35371
dense_14_35373
dense_15_35377
dense_15_35379
identityѕб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб dense_14/StatefulPartitionedCallб dense_15/StatefulPartitionedCall█
reshape_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_350902
reshape_1/PartitionedCall▓
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0dense_12_35361dense_12_35363*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_351292"
 dense_12/StatefulPartitionedCall╣
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_35366dense_13_35368*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_351762"
 dense_13/StatefulPartitionedCall╣
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_35371dense_14_35373*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_352232"
 dense_14/StatefulPartitionedCallч
flatten_1/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         аю* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_352452
flatten_1/PartitionedCallГ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_15_35377dense_15_35379*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_352642"
 dense_15/StatefulPartitionedCallЅ
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         п::::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:P L
(
_output_shapes
:         п
 
_user_specified_nameinputs
ъ
E
)__inference_reshape_1_layer_call_fn_35699

inputs
identityК
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_350902
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*'
_input_shapes
:         п:P L
(
_output_shapes
:         п
 
_user_specified_nameinputs
К
Џ
G__inference_sequential_3_layer_call_and_return_conditional_losses_35281
reshape_1_input
dense_12_35140
dense_12_35142
dense_13_35187
dense_13_35189
dense_14_35234
dense_14_35236
dense_15_35275
dense_15_35277
identityѕб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб dense_14/StatefulPartitionedCallб dense_15/StatefulPartitionedCallС
reshape_1/PartitionedCallPartitionedCallreshape_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_350902
reshape_1/PartitionedCall▓
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0dense_12_35140dense_12_35142*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_351292"
 dense_12/StatefulPartitionedCall╣
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_35187dense_13_35189*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_351762"
 dense_13/StatefulPartitionedCall╣
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_35234dense_14_35236*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_14_layer_call_and_return_conditional_losses_352232"
 dense_14/StatefulPartitionedCallч
flatten_1/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         аю* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_352452
flatten_1/PartitionedCallГ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_15_35275dense_15_35277*
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
GPU 2J 8ѓ *L
fGRE
C__inference_dense_15_layer_call_and_return_conditional_losses_352642"
 dense_15/StatefulPartitionedCallЅ
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         п::::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:Y U
(
_output_shapes
:         п
)
_user_specified_namereshape_1_input
и 
Р
C__inference_dense_13_layer_call_and_return_conditional_losses_35176

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpќ
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
Tensordot/GatherV2/axisЛ
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
Tensordot/GatherV2_1/axisО
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
Tensordot/Constђ
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
Tensordot/Const_1ѕ
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
Tensordot/concatї
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackЉ
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
Tensordot/transposeЪ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/Reshapeъ
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
Tensordot/concat_1/axisй
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Љ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
	Tensordotї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
ReluЪ
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
и 
Р
C__inference_dense_14_layer_call_and_return_conditional_losses_35810

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpќ
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
Tensordot/GatherV2/axisЛ
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
Tensordot/GatherV2_1/axisО
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
Tensordot/Constђ
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
Tensordot/Const_1ѕ
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
Tensordot/concatї
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackЉ
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
Tensordot/transposeЪ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/Reshapeъ
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
Tensordot/concat_1/axisй
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Љ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
	Tensordotї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
ReluЪ
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
└
С
,__inference_sequential_3_layer_call_fn_35402
reshape_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCall╬
StatefulPartitionedCallStatefulPartitionedCallreshape_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU 2J 8ѓ *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_353832
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         п::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:         п
)
_user_specified_namereshape_1_input
Ц
█
,__inference_sequential_3_layer_call_fn_35681

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCall┼
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
GPU 2J 8ѓ *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_353832
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         п::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         п
 
_user_specified_nameinputs
и 
Р
C__inference_dense_12_layer_call_and_return_conditional_losses_35730

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpќ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:d*
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
Tensordot/GatherV2/axisЛ
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
Tensordot/GatherV2_1/axisО
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
Tensordot/Constђ
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
Tensordot/Const_1ѕ
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
Tensordot/concatї
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackЉ
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ╚2
Tensordot/transposeЪ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/Reshapeъ
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
Tensordot/concat_1/axisй
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Љ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
	Tensordotї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
ReluЪ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         ╚d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         ╚::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         ╚
 
_user_specified_nameinputs
МG
┐
__inference__traced_save_35972
file_prefix.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
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
Const_1І
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
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameк
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*п
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╠
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesФ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
&MergeV2Checkpoints/checkpoint_prefixesА
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

identity_1Identity_1:output:0*ы
_input_shapes▀
▄: :d:d:dd:d:dd:d:
аю:: : : : : : : : : :d:d:dd:d:dd:d:
аю::d:d:dd:d:dd:d:
аю:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:d: 
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
аю: 
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

:d: 
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
аю: 

_output_shapes
::$ 

_output_shapes

:d: 
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
аю: !

_output_shapes
::"

_output_shapes
: 
ч	
▄
C__inference_dense_15_layer_call_and_return_conditional_losses_35841

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
аю*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Softmaxќ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*0
_input_shapes
:         аю::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         аю
 
_user_specified_nameinputs
ыЁ
­
G__inference_sequential_3_layer_call_and_return_conditional_losses_35536

inputs.
*dense_12_tensordot_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource.
*dense_13_tensordot_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource.
*dense_14_tensordot_readvariableop_resource,
(dense_14_biasadd_readvariableop_resource+
'dense_15_matmul_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource
identityѕбdense_12/BiasAdd/ReadVariableOpб!dense_12/Tensordot/ReadVariableOpбdense_13/BiasAdd/ReadVariableOpб!dense_13/Tensordot/ReadVariableOpбdense_14/BiasAdd/ReadVariableOpб!dense_14/Tensordot/ReadVariableOpбdense_15/BiasAdd/ReadVariableOpбdense_15/MatMul/ReadVariableOpX
reshape_1/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape_1/Shapeѕ
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_1/strided_slice/stackї
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_1ї
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_2ъ
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_1/strided_slicey
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :╚2
reshape_1/Reshape/shape/1x
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/2м
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_1/Reshape/shapeњ
reshape_1/ReshapeReshapeinputs reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:         ╚2
reshape_1/Reshape▒
!dense_12/Tensordot/ReadVariableOpReadVariableOp*dense_12_tensordot_readvariableop_resource*
_output_shapes

:d*
dtype02#
!dense_12/Tensordot/ReadVariableOp|
dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_12/Tensordot/axesЃ
dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_12/Tensordot/free~
dense_12/Tensordot/ShapeShapereshape_1/Reshape:output:0*
T0*
_output_shapes
:2
dense_12/Tensordot/Shapeє
 dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_12/Tensordot/GatherV2/axis■
dense_12/Tensordot/GatherV2GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/free:output:0)dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_12/Tensordot/GatherV2і
"dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_12/Tensordot/GatherV2_1/axisё
dense_12/Tensordot/GatherV2_1GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/axes:output:0+dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_12/Tensordot/GatherV2_1~
dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_12/Tensordot/Constц
dense_12/Tensordot/ProdProd$dense_12/Tensordot/GatherV2:output:0!dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_12/Tensordot/Prodѓ
dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_12/Tensordot/Const_1г
dense_12/Tensordot/Prod_1Prod&dense_12/Tensordot/GatherV2_1:output:0#dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_12/Tensordot/Prod_1ѓ
dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_12/Tensordot/concat/axisП
dense_12/Tensordot/concatConcatV2 dense_12/Tensordot/free:output:0 dense_12/Tensordot/axes:output:0'dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/concat░
dense_12/Tensordot/stackPack dense_12/Tensordot/Prod:output:0"dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/stack└
dense_12/Tensordot/transpose	Transposereshape_1/Reshape:output:0"dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚2
dense_12/Tensordot/transpose├
dense_12/Tensordot/ReshapeReshape dense_12/Tensordot/transpose:y:0!dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_12/Tensordot/Reshape┬
dense_12/Tensordot/MatMulMatMul#dense_12/Tensordot/Reshape:output:0)dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_12/Tensordot/MatMulѓ
dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_12/Tensordot/Const_2є
 dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_12/Tensordot/concat_1/axisЖ
dense_12/Tensordot/concat_1ConcatV2$dense_12/Tensordot/GatherV2:output:0#dense_12/Tensordot/Const_2:output:0)dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/concat_1х
dense_12/TensordotReshape#dense_12/Tensordot/MatMul:product:0$dense_12/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
dense_12/TensordotД
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_12/BiasAdd/ReadVariableOpг
dense_12/BiasAddBiasAdddense_12/Tensordot:output:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
dense_12/BiasAddx
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
dense_12/Relu▒
!dense_13/Tensordot/ReadVariableOpReadVariableOp*dense_13_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype02#
!dense_13/Tensordot/ReadVariableOp|
dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_13/Tensordot/axesЃ
dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_13/Tensordot/free
dense_13/Tensordot/ShapeShapedense_12/Relu:activations:0*
T0*
_output_shapes
:2
dense_13/Tensordot/Shapeє
 dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_13/Tensordot/GatherV2/axis■
dense_13/Tensordot/GatherV2GatherV2!dense_13/Tensordot/Shape:output:0 dense_13/Tensordot/free:output:0)dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_13/Tensordot/GatherV2і
"dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_13/Tensordot/GatherV2_1/axisё
dense_13/Tensordot/GatherV2_1GatherV2!dense_13/Tensordot/Shape:output:0 dense_13/Tensordot/axes:output:0+dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_13/Tensordot/GatherV2_1~
dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_13/Tensordot/Constц
dense_13/Tensordot/ProdProd$dense_13/Tensordot/GatherV2:output:0!dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_13/Tensordot/Prodѓ
dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_13/Tensordot/Const_1г
dense_13/Tensordot/Prod_1Prod&dense_13/Tensordot/GatherV2_1:output:0#dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_13/Tensordot/Prod_1ѓ
dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_13/Tensordot/concat/axisП
dense_13/Tensordot/concatConcatV2 dense_13/Tensordot/free:output:0 dense_13/Tensordot/axes:output:0'dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_13/Tensordot/concat░
dense_13/Tensordot/stackPack dense_13/Tensordot/Prod:output:0"dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_13/Tensordot/stack┴
dense_13/Tensordot/transpose	Transposedense_12/Relu:activations:0"dense_13/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
dense_13/Tensordot/transpose├
dense_13/Tensordot/ReshapeReshape dense_13/Tensordot/transpose:y:0!dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_13/Tensordot/Reshape┬
dense_13/Tensordot/MatMulMatMul#dense_13/Tensordot/Reshape:output:0)dense_13/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_13/Tensordot/MatMulѓ
dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_13/Tensordot/Const_2є
 dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_13/Tensordot/concat_1/axisЖ
dense_13/Tensordot/concat_1ConcatV2$dense_13/Tensordot/GatherV2:output:0#dense_13/Tensordot/Const_2:output:0)dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_13/Tensordot/concat_1х
dense_13/TensordotReshape#dense_13/Tensordot/MatMul:product:0$dense_13/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
dense_13/TensordotД
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_13/BiasAdd/ReadVariableOpг
dense_13/BiasAddBiasAdddense_13/Tensordot:output:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
dense_13/BiasAddx
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
dense_13/Relu▒
!dense_14/Tensordot/ReadVariableOpReadVariableOp*dense_14_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype02#
!dense_14/Tensordot/ReadVariableOp|
dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_14/Tensordot/axesЃ
dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_14/Tensordot/free
dense_14/Tensordot/ShapeShapedense_13/Relu:activations:0*
T0*
_output_shapes
:2
dense_14/Tensordot/Shapeє
 dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_14/Tensordot/GatherV2/axis■
dense_14/Tensordot/GatherV2GatherV2!dense_14/Tensordot/Shape:output:0 dense_14/Tensordot/free:output:0)dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_14/Tensordot/GatherV2і
"dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_14/Tensordot/GatherV2_1/axisё
dense_14/Tensordot/GatherV2_1GatherV2!dense_14/Tensordot/Shape:output:0 dense_14/Tensordot/axes:output:0+dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_14/Tensordot/GatherV2_1~
dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_14/Tensordot/Constц
dense_14/Tensordot/ProdProd$dense_14/Tensordot/GatherV2:output:0!dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_14/Tensordot/Prodѓ
dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_14/Tensordot/Const_1г
dense_14/Tensordot/Prod_1Prod&dense_14/Tensordot/GatherV2_1:output:0#dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_14/Tensordot/Prod_1ѓ
dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_14/Tensordot/concat/axisП
dense_14/Tensordot/concatConcatV2 dense_14/Tensordot/free:output:0 dense_14/Tensordot/axes:output:0'dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_14/Tensordot/concat░
dense_14/Tensordot/stackPack dense_14/Tensordot/Prod:output:0"dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_14/Tensordot/stack┴
dense_14/Tensordot/transpose	Transposedense_13/Relu:activations:0"dense_14/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ╚d2
dense_14/Tensordot/transpose├
dense_14/Tensordot/ReshapeReshape dense_14/Tensordot/transpose:y:0!dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_14/Tensordot/Reshape┬
dense_14/Tensordot/MatMulMatMul#dense_14/Tensordot/Reshape:output:0)dense_14/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_14/Tensordot/MatMulѓ
dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_14/Tensordot/Const_2є
 dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_14/Tensordot/concat_1/axisЖ
dense_14/Tensordot/concat_1ConcatV2$dense_14/Tensordot/GatherV2:output:0#dense_14/Tensordot/Const_2:output:0)dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_14/Tensordot/concat_1х
dense_14/TensordotReshape#dense_14/Tensordot/MatMul:product:0$dense_14/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         ╚d2
dense_14/TensordotД
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_14/BiasAdd/ReadVariableOpг
dense_14/BiasAddBiasAdddense_14/Tensordot:output:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         ╚d2
dense_14/BiasAddx
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*,
_output_shapes
:         ╚d2
dense_14/Relus
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"     N  2
flatten_1/Constю
flatten_1/ReshapeReshapedense_14/Relu:activations:0flatten_1/Const:output:0*
T0*)
_output_shapes
:         аю2
flatten_1/Reshapeф
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource* 
_output_shapes
:
аю*
dtype02 
dense_15/MatMul/ReadVariableOpб
dense_15/MatMulMatMulflatten_1/Reshape:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_15/MatMulД
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOpЦ
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_15/BiasAdd|
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_15/SoftmaxЃ
IdentityIdentitydense_15/Softmax:softmax:0 ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp"^dense_13/Tensordot/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp"^dense_14/Tensordot/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         п::::::::2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2F
!dense_12/Tensordot/ReadVariableOp!dense_12/Tensordot/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2F
!dense_13/Tensordot/ReadVariableOp!dense_13/Tensordot/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2F
!dense_14/Tensordot/ReadVariableOp!dense_14/Tensordot/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:P L
(
_output_shapes
:         п
 
_user_specified_nameinputs
а
E
)__inference_flatten_1_layer_call_fn_35830

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
:         аю* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_352452
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         аю2

Identity"
identityIdentity:output:0*+
_input_shapes
:         ╚d:T P
,
_output_shapes
:         ╚d
 
_user_specified_nameinputs
ПІ
з
!__inference__traced_restore_36081
file_prefix$
 assignvariableop_dense_12_kernel$
 assignvariableop_1_dense_12_bias&
"assignvariableop_2_dense_13_kernel$
 assignvariableop_3_dense_13_bias&
"assignvariableop_4_dense_14_kernel$
 assignvariableop_5_dense_14_bias&
"assignvariableop_6_dense_15_kernel$
 assignvariableop_7_dense_15_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate
assignvariableop_13_total
assignvariableop_14_count
assignvariableop_15_total_1
assignvariableop_16_count_1.
*assignvariableop_17_adam_dense_12_kernel_m,
(assignvariableop_18_adam_dense_12_bias_m.
*assignvariableop_19_adam_dense_13_kernel_m,
(assignvariableop_20_adam_dense_13_bias_m.
*assignvariableop_21_adam_dense_14_kernel_m,
(assignvariableop_22_adam_dense_14_bias_m.
*assignvariableop_23_adam_dense_15_kernel_m,
(assignvariableop_24_adam_dense_15_bias_m.
*assignvariableop_25_adam_dense_12_kernel_v,
(assignvariableop_26_adam_dense_12_bias_v.
*assignvariableop_27_adam_dense_13_kernel_v,
(assignvariableop_28_adam_dense_13_bias_v.
*assignvariableop_29_adam_dense_14_kernel_v,
(assignvariableop_30_adam_dense_14_bias_v.
*assignvariableop_31_adam_dense_15_kernel_v,
(assignvariableop_32_adam_dense_15_bias_v
identity_34ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9╠
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*п
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesм
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesп
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ъ
_output_shapesІ
ѕ::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЪ
AssignVariableOpAssignVariableOp assignvariableop_dense_12_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ц
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_12_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Д
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_13_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ц
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_13_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Д
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_14_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ц
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_14_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Д
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_15_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ц
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_15_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8А
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Б
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Д
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11д
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12«
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13А
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14А
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Б
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Б
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
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_12_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18░
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_12_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19▓
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_13_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20░
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_13_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21▓
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_14_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22░
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_14_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23▓
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_15_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24░
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_15_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25▓
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_12_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26░
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_12_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27▓
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_13_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28░
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_13_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29▓
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_14_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30░
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_14_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31▓
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_15_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32░
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_15_bias_vIdentity_32:output:0"/device:CPU:0*
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
Identity_33Д
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*Џ
_input_shapesЅ
є: :::::::::::::::::::::::::::::::::2$
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
Р
`
D__inference_reshape_1_layer_call_and_return_conditional_losses_35694

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
strided_slice/stack_2Р
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
value	B :2
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
:         ╚2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:         ╚2

Identity"
identityIdentity:output:0*'
_input_shapes
:         п:P L
(
_output_shapes
:         п
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╝
serving_defaultе
L
reshape_1_input9
!serving_default_reshape_1_input:0         п<
dense_150
StatefulPartitionedCall:0         tensorflow/serving/predict:а─
§-
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
trainable_variables
		variables

regularization_losses
	keras_api

signatures
p__call__
q_default_save_signature
*r&call_and_return_all_conditional_losses"Ч*
_tf_keras_sequentialП*{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 600]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "reshape_1_input"}}, {"class_name": "Reshape", "config": {"name": "reshape_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 600]}, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [200, 3]}}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 600]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 600]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "reshape_1_input"}}, {"class_name": "Reshape", "config": {"name": "reshape_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 600]}, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [200, 3]}}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
в
trainable_variables
	variables
regularization_losses
	keras_api
s__call__
*t&call_and_return_all_conditional_losses"▄
_tf_keras_layer┬{"class_name": "Reshape", "name": "reshape_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 600]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 600]}, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [200, 3]}}}
Ш

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
u__call__
*v&call_and_return_all_conditional_losses"Л
_tf_keras_layerи{"class_name": "Dense", "name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 3]}}
Щ

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
w__call__
*x&call_and_return_all_conditional_losses"Н
_tf_keras_layer╗{"class_name": "Dense", "name": "dense_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 100]}}
Щ

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
y__call__
*z&call_and_return_all_conditional_losses"Н
_tf_keras_layer╗{"class_name": "Dense", "name": "dense_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 100]}}
Т
#trainable_variables
$	variables
%regularization_losses
&	keras_api
{__call__
*|&call_and_return_all_conditional_losses"О
_tf_keras_layerй{"class_name": "Flatten", "name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
Щ

'kernel
(bias
)trainable_variables
*	variables
+regularization_losses
,	keras_api
}__call__
*~&call_and_return_all_conditional_losses"Н
_tf_keras_layer╗{"class_name": "Dense", "name": "dense_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20000}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20000]}}
с
-iter

.beta_1

/beta_2
	0decay
1learning_ratem`mambmcmdme'mf(mgvhvivjvkvlvm'vn(vo"
	optimizer
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
 "
trackable_list_wrapper
╩
trainable_variables
2layer_regularization_losses
		variables

regularization_losses

3layers
4metrics
5non_trainable_variables
6layer_metrics
p__call__
q_default_save_signature
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
Г
trainable_variables
7layer_regularization_losses
	variables
regularization_losses

8layers
9metrics
:non_trainable_variables
;layer_metrics
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
!:d2dense_12/kernel
:d2dense_12/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
trainable_variables
<layer_regularization_losses
	variables
regularization_losses

=layers
>metrics
?non_trainable_variables
@layer_metrics
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
!:dd2dense_13/kernel
:d2dense_13/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
trainable_variables
Alayer_regularization_losses
	variables
regularization_losses

Blayers
Cmetrics
Dnon_trainable_variables
Elayer_metrics
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
!:dd2dense_14/kernel
:d2dense_14/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
trainable_variables
Flayer_regularization_losses
 	variables
!regularization_losses

Glayers
Hmetrics
Inon_trainable_variables
Jlayer_metrics
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
Г
#trainable_variables
Klayer_regularization_losses
$	variables
%regularization_losses

Llayers
Mmetrics
Nnon_trainable_variables
Olayer_metrics
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
#:!
аю2dense_15/kernel
:2dense_15/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
)trainable_variables
Player_regularization_losses
*	variables
+regularization_losses

Qlayers
Rmetrics
Snon_trainable_variables
Tlayer_metrics
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
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
.
U0
V1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╗
	Wtotal
	Xcount
Y	variables
Z	keras_api"ё
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
 
	[total
	\count
]
_fn_kwargs
^	variables
_	keras_api"И
_tf_keras_metricЮ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
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
&:$d2Adam/dense_12/kernel/m
 :d2Adam/dense_12/bias/m
&:$dd2Adam/dense_13/kernel/m
 :d2Adam/dense_13/bias/m
&:$dd2Adam/dense_14/kernel/m
 :d2Adam/dense_14/bias/m
(:&
аю2Adam/dense_15/kernel/m
 :2Adam/dense_15/bias/m
&:$d2Adam/dense_12/kernel/v
 :d2Adam/dense_12/bias/v
&:$dd2Adam/dense_13/kernel/v
 :d2Adam/dense_13/bias/v
&:$dd2Adam/dense_14/kernel/v
 :d2Adam/dense_14/bias/v
(:&
аю2Adam/dense_15/kernel/v
 :2Adam/dense_15/bias/v
■2ч
,__inference_sequential_3_layer_call_fn_35660
,__inference_sequential_3_layer_call_fn_35681
,__inference_sequential_3_layer_call_fn_35355
,__inference_sequential_3_layer_call_fn_35402└
и▓│
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

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
у2С
 __inference__wrapped_model_35073┐
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф */б,
*і'
reshape_1_input         п
Ж2у
G__inference_sequential_3_layer_call_and_return_conditional_losses_35639
G__inference_sequential_3_layer_call_and_return_conditional_losses_35307
G__inference_sequential_3_layer_call_and_return_conditional_losses_35536
G__inference_sequential_3_layer_call_and_return_conditional_losses_35281└
и▓│
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

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
М2л
)__inference_reshape_1_layer_call_fn_35699б
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
Ь2в
D__inference_reshape_1_layer_call_and_return_conditional_losses_35694б
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
м2¤
(__inference_dense_12_layer_call_fn_35739б
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
ь2Ж
C__inference_dense_12_layer_call_and_return_conditional_losses_35730б
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
м2¤
(__inference_dense_13_layer_call_fn_35779б
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
ь2Ж
C__inference_dense_13_layer_call_and_return_conditional_losses_35770б
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
м2¤
(__inference_dense_14_layer_call_fn_35819б
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
ь2Ж
C__inference_dense_14_layer_call_and_return_conditional_losses_35810б
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
М2л
)__inference_flatten_1_layer_call_fn_35830б
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
Ь2в
D__inference_flatten_1_layer_call_and_return_conditional_losses_35825б
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
м2¤
(__inference_dense_15_layer_call_fn_35850б
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
ь2Ж
C__inference_dense_15_layer_call_and_return_conditional_losses_35841б
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
мB¤
#__inference_signature_wrapper_35433reshape_1_input"ћ
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
 ъ
 __inference__wrapped_model_35073z'(9б6
/б,
*і'
reshape_1_input         п
ф "3ф0
.
dense_15"і
dense_15         Г
C__inference_dense_12_layer_call_and_return_conditional_losses_35730f4б1
*б'
%і"
inputs         ╚
ф "*б'
 і
0         ╚d
џ Ё
(__inference_dense_12_layer_call_fn_35739Y4б1
*б'
%і"
inputs         ╚
ф "і         ╚dГ
C__inference_dense_13_layer_call_and_return_conditional_losses_35770f4б1
*б'
%і"
inputs         ╚d
ф "*б'
 і
0         ╚d
џ Ё
(__inference_dense_13_layer_call_fn_35779Y4б1
*б'
%і"
inputs         ╚d
ф "і         ╚dГ
C__inference_dense_14_layer_call_and_return_conditional_losses_35810f4б1
*б'
%і"
inputs         ╚d
ф "*б'
 і
0         ╚d
џ Ё
(__inference_dense_14_layer_call_fn_35819Y4б1
*б'
%і"
inputs         ╚d
ф "і         ╚dЦ
C__inference_dense_15_layer_call_and_return_conditional_losses_35841^'(1б.
'б$
"і
inputs         аю
ф "%б"
і
0         
џ }
(__inference_dense_15_layer_call_fn_35850Q'(1б.
'б$
"і
inputs         аю
ф "і         Д
D__inference_flatten_1_layer_call_and_return_conditional_losses_35825_4б1
*б'
%і"
inputs         ╚d
ф "'б$
і
0         аю
џ 
)__inference_flatten_1_layer_call_fn_35830R4б1
*б'
%і"
inputs         ╚d
ф "і         аюд
D__inference_reshape_1_layer_call_and_return_conditional_losses_35694^0б-
&б#
!і
inputs         п
ф "*б'
 і
0         ╚
џ ~
)__inference_reshape_1_layer_call_fn_35699Q0б-
&б#
!і
inputs         п
ф "і         ╚┐
G__inference_sequential_3_layer_call_and_return_conditional_losses_35281t'(Aб>
7б4
*і'
reshape_1_input         п
p

 
ф "%б"
і
0         
џ ┐
G__inference_sequential_3_layer_call_and_return_conditional_losses_35307t'(Aб>
7б4
*і'
reshape_1_input         п
p 

 
ф "%б"
і
0         
џ Х
G__inference_sequential_3_layer_call_and_return_conditional_losses_35536k'(8б5
.б+
!і
inputs         п
p

 
ф "%б"
і
0         
џ Х
G__inference_sequential_3_layer_call_and_return_conditional_losses_35639k'(8б5
.б+
!і
inputs         п
p 

 
ф "%б"
і
0         
џ Ќ
,__inference_sequential_3_layer_call_fn_35355g'(Aб>
7б4
*і'
reshape_1_input         п
p

 
ф "і         Ќ
,__inference_sequential_3_layer_call_fn_35402g'(Aб>
7б4
*і'
reshape_1_input         п
p 

 
ф "і         ј
,__inference_sequential_3_layer_call_fn_35660^'(8б5
.б+
!і
inputs         п
p

 
ф "і         ј
,__inference_sequential_3_layer_call_fn_35681^'(8б5
.б+
!і
inputs         п
p 

 
ф "і         х
#__inference_signature_wrapper_35433Ї'(LбI
б 
Bф?
=
reshape_1_input*і'
reshape_1_input         п"3ф0
.
dense_15"і
dense_15         