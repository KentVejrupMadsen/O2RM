��<
��
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
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628߇2
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
|
SGD/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*#
shared_nameSGD/m/dense_2/bias
u
&SGD/m/dense_2/bias/Read/ReadVariableOpReadVariableOpSGD/m/dense_2/bias*
_output_shapes
:
*
dtype0
�
SGD/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*%
shared_nameSGD/m/dense_2/kernel
~
(SGD/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpSGD/m/dense_2/kernel*
_output_shapes
:	�
*
dtype0
}
SGD/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameSGD/m/dense_1/bias
v
&SGD/m/dense_1/bias/Read/ReadVariableOpReadVariableOpSGD/m/dense_1/bias*
_output_shapes	
:�*
dtype0
�
SGD/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*%
shared_nameSGD/m/dense_1/kernel

(SGD/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpSGD/m/dense_1/kernel* 
_output_shapes
:
��*
dtype0
y
SGD/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*!
shared_nameSGD/m/dense/bias
r
$SGD/m/dense/bias/Read/ReadVariableOpReadVariableOpSGD/m/dense/bias*
_output_shapes	
:�*
dtype0
�
SGD/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
� �*#
shared_nameSGD/m/dense/kernel
{
&SGD/m/dense/kernel/Read/ReadVariableOpReadVariableOpSGD/m/dense/kernel* 
_output_shapes
:
� �*
dtype0
�
 SGD/m/batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" SGD/m/batch_normalization_5/beta
�
4SGD/m/batch_normalization_5/beta/Read/ReadVariableOpReadVariableOp SGD/m/batch_normalization_5/beta*
_output_shapes
:@*
dtype0
�
!SGD/m/batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!SGD/m/batch_normalization_5/gamma
�
5SGD/m/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOp!SGD/m/batch_normalization_5/gamma*
_output_shapes
:@*
dtype0
�
SGD/m/conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameSGD/m/conv2d_23/bias
y
(SGD/m/conv2d_23/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_23/bias*
_output_shapes
:@*
dtype0
�
SGD/m/conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameSGD/m/conv2d_23/kernel
�
*SGD/m/conv2d_23/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_23/kernel*&
_output_shapes
:@@*
dtype0
�
SGD/m/conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameSGD/m/conv2d_22/bias
y
(SGD/m/conv2d_22/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_22/bias*
_output_shapes
:@*
dtype0
�
SGD/m/conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameSGD/m/conv2d_22/kernel
�
*SGD/m/conv2d_22/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_22/kernel*&
_output_shapes
:@@*
dtype0
�
SGD/m/conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameSGD/m/conv2d_21/bias
y
(SGD/m/conv2d_21/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_21/bias*
_output_shapes
:@*
dtype0
�
SGD/m/conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameSGD/m/conv2d_21/kernel
�
*SGD/m/conv2d_21/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_21/kernel*&
_output_shapes
:@@*
dtype0
�
SGD/m/conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameSGD/m/conv2d_20/bias
y
(SGD/m/conv2d_20/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_20/bias*
_output_shapes
:@*
dtype0
�
SGD/m/conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameSGD/m/conv2d_20/kernel
�
*SGD/m/conv2d_20/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_20/kernel*&
_output_shapes
: @*
dtype0
�
 SGD/m/batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" SGD/m/batch_normalization_4/beta
�
4SGD/m/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOp SGD/m/batch_normalization_4/beta*
_output_shapes
: *
dtype0
�
!SGD/m/batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!SGD/m/batch_normalization_4/gamma
�
5SGD/m/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOp!SGD/m/batch_normalization_4/gamma*
_output_shapes
: *
dtype0
�
SGD/m/conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameSGD/m/conv2d_19/bias
y
(SGD/m/conv2d_19/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_19/bias*
_output_shapes
: *
dtype0
�
SGD/m/conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameSGD/m/conv2d_19/kernel
�
*SGD/m/conv2d_19/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_19/kernel*&
_output_shapes
:  *
dtype0
�
SGD/m/conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameSGD/m/conv2d_18/bias
y
(SGD/m/conv2d_18/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_18/bias*
_output_shapes
: *
dtype0
�
SGD/m/conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameSGD/m/conv2d_18/kernel
�
*SGD/m/conv2d_18/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_18/kernel*&
_output_shapes
:  *
dtype0
�
SGD/m/conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameSGD/m/conv2d_17/bias
y
(SGD/m/conv2d_17/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_17/bias*
_output_shapes
: *
dtype0
�
SGD/m/conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameSGD/m/conv2d_17/kernel
�
*SGD/m/conv2d_17/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_17/kernel*&
_output_shapes
:  *
dtype0
�
SGD/m/conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameSGD/m/conv2d_16/bias
y
(SGD/m/conv2d_16/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_16/bias*
_output_shapes
: *
dtype0
�
SGD/m/conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameSGD/m/conv2d_16/kernel
�
*SGD/m/conv2d_16/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_16/kernel*&
_output_shapes
: *
dtype0
�
 SGD/m/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" SGD/m/batch_normalization_3/beta
�
4SGD/m/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp SGD/m/batch_normalization_3/beta*
_output_shapes
:*
dtype0
�
!SGD/m/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!SGD/m/batch_normalization_3/gamma
�
5SGD/m/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp!SGD/m/batch_normalization_3/gamma*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameSGD/m/conv2d_15/bias
y
(SGD/m/conv2d_15/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_15/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameSGD/m/conv2d_15/kernel
�
*SGD/m/conv2d_15/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_15/kernel*&
_output_shapes
:*
dtype0
�
SGD/m/conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameSGD/m/conv2d_14/bias
y
(SGD/m/conv2d_14/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_14/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameSGD/m/conv2d_14/kernel
�
*SGD/m/conv2d_14/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_14/kernel*&
_output_shapes
:*
dtype0
�
SGD/m/conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameSGD/m/conv2d_13/bias
y
(SGD/m/conv2d_13/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_13/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameSGD/m/conv2d_13/kernel
�
*SGD/m/conv2d_13/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_13/kernel*&
_output_shapes
:*
dtype0
�
SGD/m/conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameSGD/m/conv2d_12/bias
y
(SGD/m/conv2d_12/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_12/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameSGD/m/conv2d_12/kernel
�
*SGD/m/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_12/kernel*&
_output_shapes
:*
dtype0
�
 SGD/m/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" SGD/m/batch_normalization_2/beta
�
4SGD/m/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp SGD/m/batch_normalization_2/beta*
_output_shapes
:*
dtype0
�
!SGD/m/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!SGD/m/batch_normalization_2/gamma
�
5SGD/m/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp!SGD/m/batch_normalization_2/gamma*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameSGD/m/conv2d_11/bias
y
(SGD/m/conv2d_11/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_11/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameSGD/m/conv2d_11/kernel
�
*SGD/m/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_11/kernel*&
_output_shapes
:*
dtype0
�
SGD/m/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameSGD/m/conv2d_10/bias
y
(SGD/m/conv2d_10/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_10/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameSGD/m/conv2d_10/kernel
�
*SGD/m/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_10/kernel*&
_output_shapes
:*
dtype0
~
SGD/m/conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameSGD/m/conv2d_9/bias
w
'SGD/m/conv2d_9/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_9/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameSGD/m/conv2d_9/kernel
�
)SGD/m/conv2d_9/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_9/kernel*&
_output_shapes
:*
dtype0
~
SGD/m/conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameSGD/m/conv2d_8/bias
w
'SGD/m/conv2d_8/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_8/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameSGD/m/conv2d_8/kernel
�
)SGD/m/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_8/kernel*&
_output_shapes
:*
dtype0
�
 SGD/m/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" SGD/m/batch_normalization_1/beta
�
4SGD/m/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp SGD/m/batch_normalization_1/beta*
_output_shapes
:*
dtype0
�
!SGD/m/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!SGD/m/batch_normalization_1/gamma
�
5SGD/m/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp!SGD/m/batch_normalization_1/gamma*
_output_shapes
:*
dtype0
~
SGD/m/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameSGD/m/conv2d_7/bias
w
'SGD/m/conv2d_7/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_7/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameSGD/m/conv2d_7/kernel
�
)SGD/m/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_7/kernel*&
_output_shapes
:*
dtype0
~
SGD/m/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameSGD/m/conv2d_6/bias
w
'SGD/m/conv2d_6/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_6/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameSGD/m/conv2d_6/kernel
�
)SGD/m/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_6/kernel*&
_output_shapes
:*
dtype0
~
SGD/m/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameSGD/m/conv2d_5/bias
w
'SGD/m/conv2d_5/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_5/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameSGD/m/conv2d_5/kernel
�
)SGD/m/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_5/kernel*&
_output_shapes
:*
dtype0
~
SGD/m/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameSGD/m/conv2d_4/bias
w
'SGD/m/conv2d_4/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_4/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameSGD/m/conv2d_4/kernel
�
)SGD/m/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_4/kernel*&
_output_shapes
:*
dtype0
�
!SGD/m/batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!SGD/m/batch_normalization_11/beta
�
5SGD/m/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOp!SGD/m/batch_normalization_11/beta*
_output_shapes
:*
dtype0
�
"SGD/m/batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"SGD/m/batch_normalization_11/gamma
�
6SGD/m/batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOp"SGD/m/batch_normalization_11/gamma*
_output_shapes
:*
dtype0
~
SGD/m/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameSGD/m/conv2d_3/bias
w
'SGD/m/conv2d_3/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_3/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameSGD/m/conv2d_3/kernel
�
)SGD/m/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_3/kernel*&
_output_shapes
:*
dtype0
~
SGD/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameSGD/m/conv2d_2/bias
w
'SGD/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_2/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameSGD/m/conv2d_2/kernel
�
)SGD/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_2/kernel*&
_output_shapes
:*
dtype0
~
SGD/m/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameSGD/m/conv2d_1/bias
w
'SGD/m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_1/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameSGD/m/conv2d_1/kernel
�
)SGD/m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d_1/kernel*&
_output_shapes
:*
dtype0
z
SGD/m/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameSGD/m/conv2d/bias
s
%SGD/m/conv2d/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv2d/bias*
_output_shapes
:*
dtype0
�
SGD/m/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameSGD/m/conv2d/kernel
�
'SGD/m/conv2d/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv2d/kernel*&
_output_shapes
:*
dtype0
�
!SGD/m/batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!SGD/m/batch_normalization_12/beta
�
5SGD/m/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOp!SGD/m/batch_normalization_12/beta*
_output_shapes
:*
dtype0
�
"SGD/m/batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"SGD/m/batch_normalization_12/gamma
�
6SGD/m/batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOp"SGD/m/batch_normalization_12/gamma*
_output_shapes
:*
dtype0
�
SGD/m/new_layer_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameSGD/m/new_layer_4/bias
}
*SGD/m/new_layer_4/bias/Read/ReadVariableOpReadVariableOpSGD/m/new_layer_4/bias*
_output_shapes
:*
dtype0
�
SGD/m/new_layer_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameSGD/m/new_layer_4/kernel
�
,SGD/m/new_layer_4/kernel/Read/ReadVariableOpReadVariableOpSGD/m/new_layer_4/kernel*&
_output_shapes
:*
dtype0
�
SGD/m/new_layer_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameSGD/m/new_layer_3/bias
}
*SGD/m/new_layer_3/bias/Read/ReadVariableOpReadVariableOpSGD/m/new_layer_3/bias*
_output_shapes
:*
dtype0
�
SGD/m/new_layer_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameSGD/m/new_layer_3/kernel
�
,SGD/m/new_layer_3/kernel/Read/ReadVariableOpReadVariableOpSGD/m/new_layer_3/kernel*&
_output_shapes
:*
dtype0
�
!SGD/m/batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!SGD/m/batch_normalization_13/beta
�
5SGD/m/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOp!SGD/m/batch_normalization_13/beta*
_output_shapes
:*
dtype0
�
"SGD/m/batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"SGD/m/batch_normalization_13/gamma
�
6SGD/m/batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOp"SGD/m/batch_normalization_13/gamma*
_output_shapes
:*
dtype0
�
SGD/m/new_layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameSGD/m/new_layer_2/bias
}
*SGD/m/new_layer_2/bias/Read/ReadVariableOpReadVariableOpSGD/m/new_layer_2/bias*
_output_shapes
:*
dtype0
�
SGD/m/new_layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameSGD/m/new_layer_2/kernel
�
,SGD/m/new_layer_2/kernel/Read/ReadVariableOpReadVariableOpSGD/m/new_layer_2/kernel*&
_output_shapes
:*
dtype0
�
SGD/m/new_layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameSGD/m/new_layer_1/bias
}
*SGD/m/new_layer_1/bias/Read/ReadVariableOpReadVariableOpSGD/m/new_layer_1/bias*
_output_shapes
:*
dtype0
�
SGD/m/new_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameSGD/m/new_layer_1/kernel
�
,SGD/m/new_layer_1/kernel/Read/ReadVariableOpReadVariableOpSGD/m/new_layer_1/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	�
*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:�*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
��*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
� �*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
� �*
dtype0
�
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_5/moving_variance
�
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_5/moving_mean
�
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_5/beta
�
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_5/gamma
�
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes
:@*
dtype0
t
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_23/bias
m
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes
:@*
dtype0
�
conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_23/kernel
}
$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_22/bias
m
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes
:@*
dtype0
�
conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_22/kernel
}
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_21/bias
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:@*
dtype0
�
conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_21/kernel
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
:@*
dtype0
�
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
: @*
dtype0
�
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_4/moving_variance
�
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
: *
dtype0
�
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_4/moving_mean
�
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
: *
dtype0
�
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_4/beta
�
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes
: *
dtype0
�
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_4/gamma
�
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
: *
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
: *
dtype0
�
conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
: *
dtype0
�
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
: *
dtype0
�
conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
: *
dtype0
�
conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
: *
dtype0
�
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_3/moving_variance
�
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:*
dtype0
�
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_3/moving_mean
�
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_3/beta
�
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:*
dtype0
�
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_3/gamma
�
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:*
dtype0
t
conv2d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_15/bias
m
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
:*
dtype0
�
conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_15/kernel
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
:*
dtype0
t
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_14/bias
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
:*
dtype0
�
conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
:*
dtype0
t
conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
:*
dtype0
�
conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
:*
dtype0
t
conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
:*
dtype0
�
conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
:*
dtype0
�
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_2/moving_variance
�
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:*
dtype0
�
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_2/moving_mean
�
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_2/beta
�
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:*
dtype0
�
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_2/gamma
�
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:*
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
:*
dtype0
�
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:*
dtype0
�
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:*
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:*
dtype0
�
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:*
dtype0
�
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:*
dtype0
�
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_1/moving_variance
�
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0
�
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_1/moving_mean
�
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_1/beta
�
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:*
dtype0
�
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_1/gamma
�
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:*
dtype0
�
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:*
dtype0
�
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:*
dtype0
�
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:*
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:*
dtype0
�
&batch_normalization_11/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_11/moving_variance
�
:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_11/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_11/moving_mean
�
6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_11/beta
�
/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*
_output_shapes
:*
dtype0
�
batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_11/gamma
�
0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*
_output_shapes
:*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
�
&batch_normalization_12/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_12/moving_variance
�
:batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_12/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_12/moving_mean
�
6batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_12/beta
�
/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_12/beta*
_output_shapes
:*
dtype0
�
batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_12/gamma
�
0batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_12/gamma*
_output_shapes
:*
dtype0
x
new_layer_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namenew_layer_4/bias
q
$new_layer_4/bias/Read/ReadVariableOpReadVariableOpnew_layer_4/bias*
_output_shapes
:*
dtype0
�
new_layer_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namenew_layer_4/kernel
�
&new_layer_4/kernel/Read/ReadVariableOpReadVariableOpnew_layer_4/kernel*&
_output_shapes
:*
dtype0
x
new_layer_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namenew_layer_3/bias
q
$new_layer_3/bias/Read/ReadVariableOpReadVariableOpnew_layer_3/bias*
_output_shapes
:*
dtype0
�
new_layer_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namenew_layer_3/kernel
�
&new_layer_3/kernel/Read/ReadVariableOpReadVariableOpnew_layer_3/kernel*&
_output_shapes
:*
dtype0
�
&batch_normalization_13/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_13/moving_variance
�
:batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_13/moving_mean
�
6batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_13/beta
�
/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_13/beta*
_output_shapes
:*
dtype0
�
batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_13/gamma
�
0batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_13/gamma*
_output_shapes
:*
dtype0
x
new_layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namenew_layer_2/bias
q
$new_layer_2/bias/Read/ReadVariableOpReadVariableOpnew_layer_2/bias*
_output_shapes
:*
dtype0
�
new_layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namenew_layer_2/kernel
�
&new_layer_2/kernel/Read/ReadVariableOpReadVariableOpnew_layer_2/kernel*&
_output_shapes
:*
dtype0
x
new_layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namenew_layer_1/bias
q
$new_layer_1/bias/Read/ReadVariableOpReadVariableOpnew_layer_1/bias*
_output_shapes
:*
dtype0
�
new_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namenew_layer_1/kernel
�
&new_layer_1/kernel/Read/ReadVariableOpReadVariableOpnew_layer_1/kernel*&
_output_shapes
:*
dtype0
�
serving_default_rescaling_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_rescaling_inputnew_layer_1/kernelnew_layer_1/biasnew_layer_2/kernelnew_layer_2/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_variancenew_layer_3/kernelnew_layer_3/biasnew_layer_4/kernelnew_layer_4/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_varianceconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*j
Tinc
a2_*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*�
_read_only_resource_inputsb
`^	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_29107

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
layer_with_weights-10
layer-11
layer-12
layer_with_weights-11
layer-13
layer_with_weights-12
layer-14
layer_with_weights-13
layer-15
layer_with_weights-14
layer-16
layer_with_weights-15
layer-17
layer-18
layer_with_weights-16
layer-19
layer_with_weights-17
layer-20
layer_with_weights-18
layer-21
layer_with_weights-19
layer-22
layer_with_weights-20
layer-23
layer-24
layer_with_weights-21
layer-25
layer_with_weights-22
layer-26
layer_with_weights-23
layer-27
layer_with_weights-24
layer-28
layer_with_weights-25
layer-29
layer-30
 layer_with_weights-26
 layer-31
!layer_with_weights-27
!layer-32
"layer_with_weights-28
"layer-33
#layer_with_weights-29
#layer-34
$layer_with_weights-30
$layer-35
%layer-36
&layer_with_weights-31
&layer-37
'layer_with_weights-32
'layer-38
(layer_with_weights-33
(layer-39
)layer_with_weights-34
)layer-40
*layer_with_weights-35
*layer-41
+layer-42
,layer-43
-layer_with_weights-36
-layer-44
.layer_with_weights-37
.layer-45
/layer_with_weights-38
/layer-46
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6_default_save_signature
7
signatures
8	optimizer
#9_self_saveable_object_factories*
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
#@_self_saveable_object_factories* 
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias
#I_self_saveable_object_factories
 J_jit_compiled_convolution_op*
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias
#S_self_saveable_object_factories
 T_jit_compiled_convolution_op*
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses
[axis
	\gamma
]beta
^moving_mean
_moving_variance
#`_self_saveable_object_factories*
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

gkernel
hbias
#i_self_saveable_object_factories
 j_jit_compiled_convolution_op*
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

qkernel
rbias
#s_self_saveable_object_factories
 t_jit_compiled_convolution_op*
�
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses
{axis
	|gamma
}beta
~moving_mean
moving_variance
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories*
�
G0
H1
Q2
R3
\4
]5
^6
_7
g8
h9
q10
r11
|12
}13
~14
15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77
�78
�79
�80
�81
�82
�83
�84
�85
�86
�87
�88
�89
�90
�91
�92
�93*
�
G0
H1
Q2
R3
\4
]5
g6
h7
q8
r9
|10
}11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
6_default_save_signature
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�serving_default* 
u
�
_variables
�_iterations
�_learning_rate
�_index_dict
�	momentums
�_update_step_xla*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

G0
H1*

G0
H1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
b\
VARIABLE_VALUEnew_layer_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEnew_layer_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

Q0
R1*

Q0
R1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
b\
VARIABLE_VALUEnew_layer_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEnew_layer_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
 
\0
]1
^2
_3*

\0
]1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_13/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_13/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_13/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_13/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 

g0
h1*

g0
h1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
b\
VARIABLE_VALUEnew_layer_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEnew_layer_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

q0
r1*

q0
r1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
b\
VARIABLE_VALUEnew_layer_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEnew_layer_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
 
|0
}1
~2
3*

|0
}1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_12/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_12/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_12/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_12/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_11/gamma6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_11/beta5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_11/moving_mean<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_11/moving_variance@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_4/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_4/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_5/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_5/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_6/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_6/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_7/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_7/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_1/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_1/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE!batch_normalization_1/moving_mean<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE%batch_normalization_1/moving_variance@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_8/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_8/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_9/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_9/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_10/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_10/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_11/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_11/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_2/gamma6layer_with_weights-20/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_2/beta5layer_with_weights-20/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE!batch_normalization_2/moving_mean<layer_with_weights-20/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE%batch_normalization_2/moving_variance@layer_with_weights-20/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_12/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_12/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_13/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_13/bias5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_14/kernel7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_14/bias5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_15/kernel7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_15/bias5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_3/gamma6layer_with_weights-25/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_3/beta5layer_with_weights-25/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE!batch_normalization_3/moving_mean<layer_with_weights-25/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE%batch_normalization_3/moving_variance@layer_with_weights-25/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_16/kernel7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_16/bias5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_17/kernel7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_17/bias5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_18/kernel7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_18/bias5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_19/kernel7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_19/bias5layer_with_weights-29/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_4/gamma6layer_with_weights-30/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_4/beta5layer_with_weights-30/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE!batch_normalization_4/moving_mean<layer_with_weights-30/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE%batch_normalization_4/moving_variance@layer_with_weights-30/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_20/kernel7layer_with_weights-31/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_20/bias5layer_with_weights-31/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_21/kernel7layer_with_weights-32/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_21/bias5layer_with_weights-32/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_22/kernel7layer_with_weights-33/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_22/bias5layer_with_weights-33/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_23/kernel7layer_with_weights-34/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_23/bias5layer_with_weights-34/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_5/gamma6layer_with_weights-35/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_5/beta5layer_with_weights-35/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE!batch_normalization_5/moving_mean<layer_with_weights-35/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE%batch_normalization_5/moving_variance@layer_with_weights-35/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEdense/kernel7layer_with_weights-36/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE
dense/bias5layer_with_weights-36/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-37/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_1/bias5layer_with_weights-37/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_2/kernel7layer_with_weights-38/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_2/bias5layer_with_weights-38/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
^0
_1
~2
3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15*
�
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
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77
�78*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77*
�	
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_19
�trace_20
�trace_21
�trace_22
�trace_23
�trace_24
�trace_25
�trace_26
�trace_27
�trace_28
�trace_29
�trace_30
�trace_31
�trace_32
�trace_33
�trace_34
�trace_35
�trace_36
�trace_37
�trace_38
�trace_39
�trace_40
�trace_41
�trace_42
�trace_43
�trace_44
�trace_45
�trace_46
�trace_47
�trace_48
�trace_49
�trace_50
�trace_51
�trace_52
�trace_53
�trace_54
�trace_55
�trace_56
�trace_57
�trace_58
�trace_59
�trace_60
�trace_61
�trace_62
�trace_63
�trace_64
�trace_65
�trace_66
�trace_67
�trace_68
�trace_69
�trace_70
�trace_71
�trace_72
�trace_73
�trace_74
�trace_75
�trace_76
�trace_77* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

^0
_1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

~0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
c]
VARIABLE_VALUESGD/m/new_layer_1/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUESGD/m/new_layer_1/bias1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUESGD/m/new_layer_2/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUESGD/m/new_layer_2/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"SGD/m/batch_normalization_13/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!SGD/m/batch_normalization_13/beta1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUESGD/m/new_layer_3/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUESGD/m/new_layer_3/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUESGD/m/new_layer_4/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/new_layer_4/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"SGD/m/batch_normalization_12/gamma2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!SGD/m/batch_normalization_12/beta2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/conv2d/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/m/conv2d/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUESGD/m/conv2d_1/kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/conv2d_1/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUESGD/m/conv2d_2/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/conv2d_2/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUESGD/m/conv2d_3/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/conv2d_3/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"SGD/m/batch_normalization_11/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!SGD/m/batch_normalization_11/beta2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUESGD/m/conv2d_4/kernel2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/conv2d_4/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUESGD/m/conv2d_5/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/conv2d_5/bias2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUESGD/m/conv2d_6/kernel2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/conv2d_6/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUESGD/m/conv2d_7/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/conv2d_7/bias2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!SGD/m/batch_normalization_1/gamma2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE SGD/m/batch_normalization_1/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUESGD/m/conv2d_8/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/conv2d_8/bias2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUESGD/m/conv2d_9/kernel2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/conv2d_9/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_10/kernel2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_10/bias2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_11/kernel2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_11/bias2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!SGD/m/batch_normalization_2/gamma2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE SGD/m/batch_normalization_2/beta2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_12/kernel2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_12/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_13/kernel2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_13/bias2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_14/kernel2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_14/bias2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_15/kernel2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_15/bias2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!SGD/m/batch_normalization_3/gamma2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE SGD/m/batch_normalization_3/beta2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_16/kernel2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_16/bias2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_17/kernel2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_17/bias2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_18/kernel2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_18/bias2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_19/kernel2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_19/bias2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!SGD/m/batch_normalization_4/gamma2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE SGD/m/batch_normalization_4/beta2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_20/kernel2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_20/bias2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_21/kernel2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_21/bias2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_22/kernel2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_22/bias2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUESGD/m/conv2d_23/kernel2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/conv2d_23/bias2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!SGD/m/batch_normalization_5/gamma2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE SGD/m/batch_normalization_5/beta2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUESGD/m/dense/kernel2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUESGD/m/dense/bias2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/dense_1/kernel2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUESGD/m/dense_1/bias2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/dense_2/kernel2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUESGD/m/dense_2/bias2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�#
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamenew_layer_1/kernelnew_layer_1/biasnew_layer_2/kernelnew_layer_2/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_variancenew_layer_3/kernelnew_layer_3/biasnew_layer_4/kernelnew_layer_4/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_varianceconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	iterationlearning_rateSGD/m/new_layer_1/kernelSGD/m/new_layer_1/biasSGD/m/new_layer_2/kernelSGD/m/new_layer_2/bias"SGD/m/batch_normalization_13/gamma!SGD/m/batch_normalization_13/betaSGD/m/new_layer_3/kernelSGD/m/new_layer_3/biasSGD/m/new_layer_4/kernelSGD/m/new_layer_4/bias"SGD/m/batch_normalization_12/gamma!SGD/m/batch_normalization_12/betaSGD/m/conv2d/kernelSGD/m/conv2d/biasSGD/m/conv2d_1/kernelSGD/m/conv2d_1/biasSGD/m/conv2d_2/kernelSGD/m/conv2d_2/biasSGD/m/conv2d_3/kernelSGD/m/conv2d_3/bias"SGD/m/batch_normalization_11/gamma!SGD/m/batch_normalization_11/betaSGD/m/conv2d_4/kernelSGD/m/conv2d_4/biasSGD/m/conv2d_5/kernelSGD/m/conv2d_5/biasSGD/m/conv2d_6/kernelSGD/m/conv2d_6/biasSGD/m/conv2d_7/kernelSGD/m/conv2d_7/bias!SGD/m/batch_normalization_1/gamma SGD/m/batch_normalization_1/betaSGD/m/conv2d_8/kernelSGD/m/conv2d_8/biasSGD/m/conv2d_9/kernelSGD/m/conv2d_9/biasSGD/m/conv2d_10/kernelSGD/m/conv2d_10/biasSGD/m/conv2d_11/kernelSGD/m/conv2d_11/bias!SGD/m/batch_normalization_2/gamma SGD/m/batch_normalization_2/betaSGD/m/conv2d_12/kernelSGD/m/conv2d_12/biasSGD/m/conv2d_13/kernelSGD/m/conv2d_13/biasSGD/m/conv2d_14/kernelSGD/m/conv2d_14/biasSGD/m/conv2d_15/kernelSGD/m/conv2d_15/bias!SGD/m/batch_normalization_3/gamma SGD/m/batch_normalization_3/betaSGD/m/conv2d_16/kernelSGD/m/conv2d_16/biasSGD/m/conv2d_17/kernelSGD/m/conv2d_17/biasSGD/m/conv2d_18/kernelSGD/m/conv2d_18/biasSGD/m/conv2d_19/kernelSGD/m/conv2d_19/bias!SGD/m/batch_normalization_4/gamma SGD/m/batch_normalization_4/betaSGD/m/conv2d_20/kernelSGD/m/conv2d_20/biasSGD/m/conv2d_21/kernelSGD/m/conv2d_21/biasSGD/m/conv2d_22/kernelSGD/m/conv2d_22/biasSGD/m/conv2d_23/kernelSGD/m/conv2d_23/bias!SGD/m/batch_normalization_5/gamma SGD/m/batch_normalization_5/betaSGD/m/dense/kernelSGD/m/dense/biasSGD/m/dense_1/kernelSGD/m/dense_1/biasSGD/m/dense_2/kernelSGD/m/dense_2/biastotal_1count_1totalcountConst*�
Tin�
�2�*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference__traced_save_31784
�#
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamenew_layer_1/kernelnew_layer_1/biasnew_layer_2/kernelnew_layer_2/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_variancenew_layer_3/kernelnew_layer_3/biasnew_layer_4/kernelnew_layer_4/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_varianceconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	iterationlearning_rateSGD/m/new_layer_1/kernelSGD/m/new_layer_1/biasSGD/m/new_layer_2/kernelSGD/m/new_layer_2/bias"SGD/m/batch_normalization_13/gamma!SGD/m/batch_normalization_13/betaSGD/m/new_layer_3/kernelSGD/m/new_layer_3/biasSGD/m/new_layer_4/kernelSGD/m/new_layer_4/bias"SGD/m/batch_normalization_12/gamma!SGD/m/batch_normalization_12/betaSGD/m/conv2d/kernelSGD/m/conv2d/biasSGD/m/conv2d_1/kernelSGD/m/conv2d_1/biasSGD/m/conv2d_2/kernelSGD/m/conv2d_2/biasSGD/m/conv2d_3/kernelSGD/m/conv2d_3/bias"SGD/m/batch_normalization_11/gamma!SGD/m/batch_normalization_11/betaSGD/m/conv2d_4/kernelSGD/m/conv2d_4/biasSGD/m/conv2d_5/kernelSGD/m/conv2d_5/biasSGD/m/conv2d_6/kernelSGD/m/conv2d_6/biasSGD/m/conv2d_7/kernelSGD/m/conv2d_7/bias!SGD/m/batch_normalization_1/gamma SGD/m/batch_normalization_1/betaSGD/m/conv2d_8/kernelSGD/m/conv2d_8/biasSGD/m/conv2d_9/kernelSGD/m/conv2d_9/biasSGD/m/conv2d_10/kernelSGD/m/conv2d_10/biasSGD/m/conv2d_11/kernelSGD/m/conv2d_11/bias!SGD/m/batch_normalization_2/gamma SGD/m/batch_normalization_2/betaSGD/m/conv2d_12/kernelSGD/m/conv2d_12/biasSGD/m/conv2d_13/kernelSGD/m/conv2d_13/biasSGD/m/conv2d_14/kernelSGD/m/conv2d_14/biasSGD/m/conv2d_15/kernelSGD/m/conv2d_15/bias!SGD/m/batch_normalization_3/gamma SGD/m/batch_normalization_3/betaSGD/m/conv2d_16/kernelSGD/m/conv2d_16/biasSGD/m/conv2d_17/kernelSGD/m/conv2d_17/biasSGD/m/conv2d_18/kernelSGD/m/conv2d_18/biasSGD/m/conv2d_19/kernelSGD/m/conv2d_19/bias!SGD/m/batch_normalization_4/gamma SGD/m/batch_normalization_4/betaSGD/m/conv2d_20/kernelSGD/m/conv2d_20/biasSGD/m/conv2d_21/kernelSGD/m/conv2d_21/biasSGD/m/conv2d_22/kernelSGD/m/conv2d_22/biasSGD/m/conv2d_23/kernelSGD/m/conv2d_23/bias!SGD/m/batch_normalization_5/gamma SGD/m/batch_normalization_5/betaSGD/m/dense/kernelSGD/m/dense/biasSGD/m/dense_1/kernelSGD/m/dense_1/biasSGD/m/dense_2/kernelSGD/m/dense_2/biastotal_1count_1totalcount*�
Tin�
�2�*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__traced_restore_32327��*
�
J
"__inference__update_step_xla_29497
gradient
variable:
*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:
: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:

"
_user_specified_name
gradient
�
�
'__inference_dense_2_layer_call_fn_30684

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_27990o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30680:%!

_user_specified_name30678:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_13_layer_call_fn_29563

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_26868�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29559:%!

_user_specified_name29557:%!

_user_specified_name29555:%!

_user_specified_name29553:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_13_layer_call_fn_30199

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_27748w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30195:%!

_user_specified_name30193:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_5_layer_call_and_return_conditional_losses_29906

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29302
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
V
"__inference__update_step_xla_29122
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_29467
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
�
)__inference_conv2d_12_layer_call_fn_30179

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_27732w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30175:%!

_user_specified_name30173:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_27975

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
5__inference_batch_normalization_5_layer_call_fn_30580

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_27370�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30576:%!

_user_specified_name30574:%!

_user_specified_name30572:%!

_user_specified_name30570:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_8_layer_call_and_return_conditional_losses_30038

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_27257

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
`
D__inference_rescaling_layer_call_and_return_conditional_losses_29510

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *�� <M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��_
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_29838

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29332
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
�
)__inference_conv2d_17_layer_call_fn_30351

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_27822w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������   <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30347:%!

_user_specified_name30345:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29372
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
: 
"
_user_specified_name
gradient
�

�
5__inference_batch_normalization_3_layer_call_fn_30276

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_27226�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30272:%!

_user_specified_name30270:%!

_user_specified_name30268:%!

_user_specified_name30266:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�

�
5__inference_batch_normalization_1_layer_call_fn_29959

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_27064�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29955:%!

_user_specified_name29953:%!

_user_specified_name29951:%!

_user_specified_name29949:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_29612

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_10_layer_call_fn_30067

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_27690y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30063:%!

_user_specified_name30061:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�(
E__inference_sequential_layer_call_and_return_conditional_losses_27997
rescaling_input+
new_layer_1_27429:
new_layer_1_27431:+
new_layer_2_27445:
new_layer_2_27447:*
batch_normalization_13_27450:*
batch_normalization_13_27452:*
batch_normalization_13_27454:*
batch_normalization_13_27456:+
new_layer_3_27470:
new_layer_3_27472:+
new_layer_4_27486:
new_layer_4_27488:*
batch_normalization_12_27491:*
batch_normalization_12_27493:*
batch_normalization_12_27495:*
batch_normalization_12_27497:&
conv2d_27511:
conv2d_27513:(
conv2d_1_27527:
conv2d_1_27529:(
conv2d_2_27543:
conv2d_2_27545:(
conv2d_3_27559:
conv2d_3_27561:*
batch_normalization_11_27564:*
batch_normalization_11_27566:*
batch_normalization_11_27568:*
batch_normalization_11_27570:(
conv2d_4_27585:
conv2d_4_27587:(
conv2d_5_27601:
conv2d_5_27603:(
conv2d_6_27617:
conv2d_6_27619:(
conv2d_7_27633:
conv2d_7_27635:)
batch_normalization_1_27638:)
batch_normalization_1_27640:)
batch_normalization_1_27642:)
batch_normalization_1_27644:(
conv2d_8_27659:
conv2d_8_27661:(
conv2d_9_27675:
conv2d_9_27677:)
conv2d_10_27691:
conv2d_10_27693:)
conv2d_11_27707:
conv2d_11_27709:)
batch_normalization_2_27712:)
batch_normalization_2_27714:)
batch_normalization_2_27716:)
batch_normalization_2_27718:)
conv2d_12_27733:
conv2d_12_27735:)
conv2d_13_27749:
conv2d_13_27751:)
conv2d_14_27765:
conv2d_14_27767:)
conv2d_15_27781:
conv2d_15_27783:)
batch_normalization_3_27786:)
batch_normalization_3_27788:)
batch_normalization_3_27790:)
batch_normalization_3_27792:)
conv2d_16_27807: 
conv2d_16_27809: )
conv2d_17_27823:  
conv2d_17_27825: )
conv2d_18_27839:  
conv2d_18_27841: )
conv2d_19_27855:  
conv2d_19_27857: )
batch_normalization_4_27860: )
batch_normalization_4_27862: )
batch_normalization_4_27864: )
batch_normalization_4_27866: )
conv2d_20_27881: @
conv2d_20_27883:@)
conv2d_21_27897:@@
conv2d_21_27899:@)
conv2d_22_27913:@@
conv2d_22_27915:@)
conv2d_23_27929:@@
conv2d_23_27931:@)
batch_normalization_5_27934:@)
batch_normalization_5_27936:@)
batch_normalization_5_27938:@)
batch_normalization_5_27940:@
dense_27961:
� �
dense_27963:	�!
dense_1_27976:
��
dense_1_27978:	� 
dense_2_27991:	�

dense_2_27993:

identity��-batch_normalization_1/StatefulPartitionedCall�.batch_normalization_11/StatefulPartitionedCall�.batch_normalization_12/StatefulPartitionedCall�.batch_normalization_13/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�-batch_normalization_5/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall�!conv2d_12/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�!conv2d_18/StatefulPartitionedCall�!conv2d_19/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�!conv2d_20/StatefulPartitionedCall�!conv2d_21/StatefulPartitionedCall�!conv2d_22/StatefulPartitionedCall�!conv2d_23/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�#new_layer_1/StatefulPartitionedCall�#new_layer_2/StatefulPartitionedCall�#new_layer_3/StatefulPartitionedCall�#new_layer_4/StatefulPartitionedCall�
rescaling/PartitionedCallPartitionedCallrescaling_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_27416�
#new_layer_1/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0new_layer_1_27429new_layer_1_27431*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_new_layer_1_layer_call_and_return_conditional_losses_27428�
#new_layer_2/StatefulPartitionedCallStatefulPartitionedCall,new_layer_1/StatefulPartitionedCall:output:0new_layer_2_27445new_layer_2_27447*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_new_layer_2_layer_call_and_return_conditional_losses_27444�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall,new_layer_2/StatefulPartitionedCall:output:0batch_normalization_13_27450batch_normalization_13_27452batch_normalization_13_27454batch_normalization_13_27456*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_26868�
#new_layer_3/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0new_layer_3_27470new_layer_3_27472*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_new_layer_3_layer_call_and_return_conditional_losses_27469�
#new_layer_4/StatefulPartitionedCallStatefulPartitionedCall,new_layer_3/StatefulPartitionedCall:output:0new_layer_4_27486new_layer_4_27488*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_new_layer_4_layer_call_and_return_conditional_losses_27485�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall,new_layer_4/StatefulPartitionedCall:output:0batch_normalization_12_27491batch_normalization_12_27493batch_normalization_12_27495batch_normalization_12_27497*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_26930�
conv2d/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0conv2d_27511conv2d_27513*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_27510�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_27527conv2d_1_27529*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_27526�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_27543conv2d_2_27545*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_27542�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_27559conv2d_3_27561*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_27558�
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_11_27564batch_normalization_11_27566batch_normalization_11_27568batch_normalization_11_27570*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_26992�
max_pooling2d/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_27041�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_4_27585conv2d_4_27587*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_27584�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_27601conv2d_5_27603*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_27600�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_27617conv2d_6_27619*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_27616�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_27633conv2d_7_27635*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_27632�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_1_27638batch_normalization_1_27640batch_normalization_1_27642batch_normalization_1_27644*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_27064�
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_27113�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_8_27659conv2d_8_27661*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_27658�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0conv2d_9_27675conv2d_9_27677*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_27674�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_27691conv2d_10_27693*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_27690�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_27707conv2d_11_27709*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_27706�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_2_27712batch_normalization_2_27714batch_normalization_2_27716batch_normalization_2_27718*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_27136�
max_pooling2d_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_27185�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_12_27733conv2d_12_27735*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_27732�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0conv2d_13_27749conv2d_13_27751*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_27748�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0conv2d_14_27765conv2d_14_27767*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_27764�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0conv2d_15_27781conv2d_15_27783*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_27780�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0batch_normalization_3_27786batch_normalization_3_27788batch_normalization_3_27790batch_normalization_3_27792*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_27208�
max_pooling2d_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_27257�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_16_27807conv2d_16_27809*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_27806�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0conv2d_17_27823conv2d_17_27825*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_27822�
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0conv2d_18_27839conv2d_18_27841*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_27838�
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_27855conv2d_19_27857*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_27854�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_4_27860batch_normalization_4_27862batch_normalization_4_27864batch_normalization_4_27866*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_27280�
max_pooling2d_4/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_27329�
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_20_27881conv2d_20_27883*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_27880�
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0conv2d_21_27897conv2d_21_27899*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_27896�
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0conv2d_22_27913conv2d_22_27915*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_27912�
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0conv2d_23_27929conv2d_23_27931*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_27928�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0batch_normalization_5_27934batch_normalization_5_27936batch_normalization_5_27938batch_normalization_5_27940*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_27352�
max_pooling2d_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_27401�
flatten/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_27949�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_27961dense_27963*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27960�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_27976dense_1_27978*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_27975�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_27991dense_2_27993*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_27990w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall$^new_layer_1/StatefulPartitionedCall$^new_layer_2/StatefulPartitionedCall$^new_layer_3/StatefulPartitionedCall$^new_layer_4/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2J
#new_layer_1/StatefulPartitionedCall#new_layer_1/StatefulPartitionedCall2J
#new_layer_2/StatefulPartitionedCall#new_layer_2/StatefulPartitionedCall2J
#new_layer_3/StatefulPartitionedCall#new_layer_3/StatefulPartitionedCall2J
#new_layer_4/StatefulPartitionedCall#new_layer_4/StatefulPartitionedCall:%^!

_user_specified_name27993:%]!

_user_specified_name27991:%\!

_user_specified_name27978:%[!

_user_specified_name27976:%Z!

_user_specified_name27963:%Y!

_user_specified_name27961:%X!

_user_specified_name27940:%W!

_user_specified_name27938:%V!

_user_specified_name27936:%U!

_user_specified_name27934:%T!

_user_specified_name27931:%S!

_user_specified_name27929:%R!

_user_specified_name27915:%Q!

_user_specified_name27913:%P!

_user_specified_name27899:%O!

_user_specified_name27897:%N!

_user_specified_name27883:%M!

_user_specified_name27881:%L!

_user_specified_name27866:%K!

_user_specified_name27864:%J!

_user_specified_name27862:%I!

_user_specified_name27860:%H!

_user_specified_name27857:%G!

_user_specified_name27855:%F!

_user_specified_name27841:%E!

_user_specified_name27839:%D!

_user_specified_name27825:%C!

_user_specified_name27823:%B!

_user_specified_name27809:%A!

_user_specified_name27807:%@!

_user_specified_name27792:%?!

_user_specified_name27790:%>!

_user_specified_name27788:%=!

_user_specified_name27786:%<!

_user_specified_name27783:%;!

_user_specified_name27781:%:!

_user_specified_name27767:%9!

_user_specified_name27765:%8!

_user_specified_name27751:%7!

_user_specified_name27749:%6!

_user_specified_name27735:%5!

_user_specified_name27733:%4!

_user_specified_name27718:%3!

_user_specified_name27716:%2!

_user_specified_name27714:%1!

_user_specified_name27712:%0!

_user_specified_name27709:%/!

_user_specified_name27707:%.!

_user_specified_name27693:%-!

_user_specified_name27691:%,!

_user_specified_name27677:%+!

_user_specified_name27675:%*!

_user_specified_name27661:%)!

_user_specified_name27659:%(!

_user_specified_name27644:%'!

_user_specified_name27642:%&!

_user_specified_name27640:%%!

_user_specified_name27638:%$!

_user_specified_name27635:%#!

_user_specified_name27633:%"!

_user_specified_name27619:%!!

_user_specified_name27617:% !

_user_specified_name27603:%!

_user_specified_name27601:%!

_user_specified_name27587:%!

_user_specified_name27585:%!

_user_specified_name27570:%!

_user_specified_name27568:%!

_user_specified_name27566:%!

_user_specified_name27564:%!

_user_specified_name27561:%!

_user_specified_name27559:%!

_user_specified_name27545:%!

_user_specified_name27543:%!

_user_specified_name27529:%!

_user_specified_name27527:%!

_user_specified_name27513:%!

_user_specified_name27511:%!

_user_specified_name27497:%!

_user_specified_name27495:%!

_user_specified_name27493:%!

_user_specified_name27491:%!

_user_specified_name27488:%!

_user_specified_name27486:%
!

_user_specified_name27472:%	!

_user_specified_name27470:%!

_user_specified_name27456:%!

_user_specified_name27454:%!

_user_specified_name27452:%!

_user_specified_name27450:%!

_user_specified_name27447:%!

_user_specified_name27445:%!

_user_specified_name27431:%!

_user_specified_name27429:b ^
1
_output_shapes
:�����������
)
_user_specified_namerescaling_input
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_29866

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_29990

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_29714

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
F__inference_new_layer_3_layer_call_and_return_conditional_losses_29632

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
5__inference_batch_normalization_2_layer_call_fn_30111

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_27136�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30107:%!

_user_specified_name30105:%!

_user_specified_name30103:%!

_user_specified_name30101:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_22_layer_call_and_return_conditional_losses_27912

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
5__inference_batch_normalization_4_layer_call_fn_30415

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_27280�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30411:%!

_user_specified_name30409:%!

_user_specified_name30407:%!

_user_specified_name30405:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29212
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_29207
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
V
"__inference__update_step_xla_29252
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
V
"__inference__update_step_xla_29172
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
�
F__inference_new_layer_4_layer_call_and_return_conditional_losses_27485

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29157
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_27185

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29112
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
I
-__inference_max_pooling2d_layer_call_fn_29861

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_27041�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
+__inference_new_layer_4_layer_call_fn_29641

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_new_layer_4_layer_call_and_return_conditional_losses_27485y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29637:%!

_user_specified_name29635:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29317
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�

�
6__inference_batch_normalization_11_layer_call_fn_29807

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_26992�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29803:%!

_user_specified_name29801:%!

_user_specified_name29799:%!

_user_specified_name29797:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
��

��
__inference__traced_save_31784
file_prefixC
)read_disablecopyonread_new_layer_1_kernel:7
)read_1_disablecopyonread_new_layer_1_bias:E
+read_2_disablecopyonread_new_layer_2_kernel:7
)read_3_disablecopyonread_new_layer_2_bias:C
5read_4_disablecopyonread_batch_normalization_13_gamma:B
4read_5_disablecopyonread_batch_normalization_13_beta:I
;read_6_disablecopyonread_batch_normalization_13_moving_mean:M
?read_7_disablecopyonread_batch_normalization_13_moving_variance:E
+read_8_disablecopyonread_new_layer_3_kernel:7
)read_9_disablecopyonread_new_layer_3_bias:F
,read_10_disablecopyonread_new_layer_4_kernel:8
*read_11_disablecopyonread_new_layer_4_bias:D
6read_12_disablecopyonread_batch_normalization_12_gamma:C
5read_13_disablecopyonread_batch_normalization_12_beta:J
<read_14_disablecopyonread_batch_normalization_12_moving_mean:N
@read_15_disablecopyonread_batch_normalization_12_moving_variance:A
'read_16_disablecopyonread_conv2d_kernel:3
%read_17_disablecopyonread_conv2d_bias:C
)read_18_disablecopyonread_conv2d_1_kernel:5
'read_19_disablecopyonread_conv2d_1_bias:C
)read_20_disablecopyonread_conv2d_2_kernel:5
'read_21_disablecopyonread_conv2d_2_bias:C
)read_22_disablecopyonread_conv2d_3_kernel:5
'read_23_disablecopyonread_conv2d_3_bias:D
6read_24_disablecopyonread_batch_normalization_11_gamma:C
5read_25_disablecopyonread_batch_normalization_11_beta:J
<read_26_disablecopyonread_batch_normalization_11_moving_mean:N
@read_27_disablecopyonread_batch_normalization_11_moving_variance:C
)read_28_disablecopyonread_conv2d_4_kernel:5
'read_29_disablecopyonread_conv2d_4_bias:C
)read_30_disablecopyonread_conv2d_5_kernel:5
'read_31_disablecopyonread_conv2d_5_bias:C
)read_32_disablecopyonread_conv2d_6_kernel:5
'read_33_disablecopyonread_conv2d_6_bias:C
)read_34_disablecopyonread_conv2d_7_kernel:5
'read_35_disablecopyonread_conv2d_7_bias:C
5read_36_disablecopyonread_batch_normalization_1_gamma:B
4read_37_disablecopyonread_batch_normalization_1_beta:I
;read_38_disablecopyonread_batch_normalization_1_moving_mean:M
?read_39_disablecopyonread_batch_normalization_1_moving_variance:C
)read_40_disablecopyonread_conv2d_8_kernel:5
'read_41_disablecopyonread_conv2d_8_bias:C
)read_42_disablecopyonread_conv2d_9_kernel:5
'read_43_disablecopyonread_conv2d_9_bias:D
*read_44_disablecopyonread_conv2d_10_kernel:6
(read_45_disablecopyonread_conv2d_10_bias:D
*read_46_disablecopyonread_conv2d_11_kernel:6
(read_47_disablecopyonread_conv2d_11_bias:C
5read_48_disablecopyonread_batch_normalization_2_gamma:B
4read_49_disablecopyonread_batch_normalization_2_beta:I
;read_50_disablecopyonread_batch_normalization_2_moving_mean:M
?read_51_disablecopyonread_batch_normalization_2_moving_variance:D
*read_52_disablecopyonread_conv2d_12_kernel:6
(read_53_disablecopyonread_conv2d_12_bias:D
*read_54_disablecopyonread_conv2d_13_kernel:6
(read_55_disablecopyonread_conv2d_13_bias:D
*read_56_disablecopyonread_conv2d_14_kernel:6
(read_57_disablecopyonread_conv2d_14_bias:D
*read_58_disablecopyonread_conv2d_15_kernel:6
(read_59_disablecopyonread_conv2d_15_bias:C
5read_60_disablecopyonread_batch_normalization_3_gamma:B
4read_61_disablecopyonread_batch_normalization_3_beta:I
;read_62_disablecopyonread_batch_normalization_3_moving_mean:M
?read_63_disablecopyonread_batch_normalization_3_moving_variance:D
*read_64_disablecopyonread_conv2d_16_kernel: 6
(read_65_disablecopyonread_conv2d_16_bias: D
*read_66_disablecopyonread_conv2d_17_kernel:  6
(read_67_disablecopyonread_conv2d_17_bias: D
*read_68_disablecopyonread_conv2d_18_kernel:  6
(read_69_disablecopyonread_conv2d_18_bias: D
*read_70_disablecopyonread_conv2d_19_kernel:  6
(read_71_disablecopyonread_conv2d_19_bias: C
5read_72_disablecopyonread_batch_normalization_4_gamma: B
4read_73_disablecopyonread_batch_normalization_4_beta: I
;read_74_disablecopyonread_batch_normalization_4_moving_mean: M
?read_75_disablecopyonread_batch_normalization_4_moving_variance: D
*read_76_disablecopyonread_conv2d_20_kernel: @6
(read_77_disablecopyonread_conv2d_20_bias:@D
*read_78_disablecopyonread_conv2d_21_kernel:@@6
(read_79_disablecopyonread_conv2d_21_bias:@D
*read_80_disablecopyonread_conv2d_22_kernel:@@6
(read_81_disablecopyonread_conv2d_22_bias:@D
*read_82_disablecopyonread_conv2d_23_kernel:@@6
(read_83_disablecopyonread_conv2d_23_bias:@C
5read_84_disablecopyonread_batch_normalization_5_gamma:@B
4read_85_disablecopyonread_batch_normalization_5_beta:@I
;read_86_disablecopyonread_batch_normalization_5_moving_mean:@M
?read_87_disablecopyonread_batch_normalization_5_moving_variance:@:
&read_88_disablecopyonread_dense_kernel:
� �3
$read_89_disablecopyonread_dense_bias:	�<
(read_90_disablecopyonread_dense_1_kernel:
��5
&read_91_disablecopyonread_dense_1_bias:	�;
(read_92_disablecopyonread_dense_2_kernel:	�
4
&read_93_disablecopyonread_dense_2_bias:
-
#read_94_disablecopyonread_iteration:	 1
'read_95_disablecopyonread_learning_rate: L
2read_96_disablecopyonread_sgd_m_new_layer_1_kernel:>
0read_97_disablecopyonread_sgd_m_new_layer_1_bias:L
2read_98_disablecopyonread_sgd_m_new_layer_2_kernel:>
0read_99_disablecopyonread_sgd_m_new_layer_2_bias:K
=read_100_disablecopyonread_sgd_m_batch_normalization_13_gamma:J
<read_101_disablecopyonread_sgd_m_batch_normalization_13_beta:M
3read_102_disablecopyonread_sgd_m_new_layer_3_kernel:?
1read_103_disablecopyonread_sgd_m_new_layer_3_bias:M
3read_104_disablecopyonread_sgd_m_new_layer_4_kernel:?
1read_105_disablecopyonread_sgd_m_new_layer_4_bias:K
=read_106_disablecopyonread_sgd_m_batch_normalization_12_gamma:J
<read_107_disablecopyonread_sgd_m_batch_normalization_12_beta:H
.read_108_disablecopyonread_sgd_m_conv2d_kernel::
,read_109_disablecopyonread_sgd_m_conv2d_bias:J
0read_110_disablecopyonread_sgd_m_conv2d_1_kernel:<
.read_111_disablecopyonread_sgd_m_conv2d_1_bias:J
0read_112_disablecopyonread_sgd_m_conv2d_2_kernel:<
.read_113_disablecopyonread_sgd_m_conv2d_2_bias:J
0read_114_disablecopyonread_sgd_m_conv2d_3_kernel:<
.read_115_disablecopyonread_sgd_m_conv2d_3_bias:K
=read_116_disablecopyonread_sgd_m_batch_normalization_11_gamma:J
<read_117_disablecopyonread_sgd_m_batch_normalization_11_beta:J
0read_118_disablecopyonread_sgd_m_conv2d_4_kernel:<
.read_119_disablecopyonread_sgd_m_conv2d_4_bias:J
0read_120_disablecopyonread_sgd_m_conv2d_5_kernel:<
.read_121_disablecopyonread_sgd_m_conv2d_5_bias:J
0read_122_disablecopyonread_sgd_m_conv2d_6_kernel:<
.read_123_disablecopyonread_sgd_m_conv2d_6_bias:J
0read_124_disablecopyonread_sgd_m_conv2d_7_kernel:<
.read_125_disablecopyonread_sgd_m_conv2d_7_bias:J
<read_126_disablecopyonread_sgd_m_batch_normalization_1_gamma:I
;read_127_disablecopyonread_sgd_m_batch_normalization_1_beta:J
0read_128_disablecopyonread_sgd_m_conv2d_8_kernel:<
.read_129_disablecopyonread_sgd_m_conv2d_8_bias:J
0read_130_disablecopyonread_sgd_m_conv2d_9_kernel:<
.read_131_disablecopyonread_sgd_m_conv2d_9_bias:K
1read_132_disablecopyonread_sgd_m_conv2d_10_kernel:=
/read_133_disablecopyonread_sgd_m_conv2d_10_bias:K
1read_134_disablecopyonread_sgd_m_conv2d_11_kernel:=
/read_135_disablecopyonread_sgd_m_conv2d_11_bias:J
<read_136_disablecopyonread_sgd_m_batch_normalization_2_gamma:I
;read_137_disablecopyonread_sgd_m_batch_normalization_2_beta:K
1read_138_disablecopyonread_sgd_m_conv2d_12_kernel:=
/read_139_disablecopyonread_sgd_m_conv2d_12_bias:K
1read_140_disablecopyonread_sgd_m_conv2d_13_kernel:=
/read_141_disablecopyonread_sgd_m_conv2d_13_bias:K
1read_142_disablecopyonread_sgd_m_conv2d_14_kernel:=
/read_143_disablecopyonread_sgd_m_conv2d_14_bias:K
1read_144_disablecopyonread_sgd_m_conv2d_15_kernel:=
/read_145_disablecopyonread_sgd_m_conv2d_15_bias:J
<read_146_disablecopyonread_sgd_m_batch_normalization_3_gamma:I
;read_147_disablecopyonread_sgd_m_batch_normalization_3_beta:K
1read_148_disablecopyonread_sgd_m_conv2d_16_kernel: =
/read_149_disablecopyonread_sgd_m_conv2d_16_bias: K
1read_150_disablecopyonread_sgd_m_conv2d_17_kernel:  =
/read_151_disablecopyonread_sgd_m_conv2d_17_bias: K
1read_152_disablecopyonread_sgd_m_conv2d_18_kernel:  =
/read_153_disablecopyonread_sgd_m_conv2d_18_bias: K
1read_154_disablecopyonread_sgd_m_conv2d_19_kernel:  =
/read_155_disablecopyonread_sgd_m_conv2d_19_bias: J
<read_156_disablecopyonread_sgd_m_batch_normalization_4_gamma: I
;read_157_disablecopyonread_sgd_m_batch_normalization_4_beta: K
1read_158_disablecopyonread_sgd_m_conv2d_20_kernel: @=
/read_159_disablecopyonread_sgd_m_conv2d_20_bias:@K
1read_160_disablecopyonread_sgd_m_conv2d_21_kernel:@@=
/read_161_disablecopyonread_sgd_m_conv2d_21_bias:@K
1read_162_disablecopyonread_sgd_m_conv2d_22_kernel:@@=
/read_163_disablecopyonread_sgd_m_conv2d_22_bias:@K
1read_164_disablecopyonread_sgd_m_conv2d_23_kernel:@@=
/read_165_disablecopyonread_sgd_m_conv2d_23_bias:@J
<read_166_disablecopyonread_sgd_m_batch_normalization_5_gamma:@I
;read_167_disablecopyonread_sgd_m_batch_normalization_5_beta:@A
-read_168_disablecopyonread_sgd_m_dense_kernel:
� �:
+read_169_disablecopyonread_sgd_m_dense_bias:	�C
/read_170_disablecopyonread_sgd_m_dense_1_kernel:
��<
-read_171_disablecopyonread_sgd_m_dense_1_bias:	�B
/read_172_disablecopyonread_sgd_m_dense_2_kernel:	�
;
-read_173_disablecopyonread_sgd_m_dense_2_bias:
,
"read_174_disablecopyonread_total_1: ,
"read_175_disablecopyonread_count_1: *
 read_176_disablecopyonread_total: *
 read_177_disablecopyonread_count: 
savev2_const
identity_357��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_100/DisableCopyOnRead�Read_100/ReadVariableOp�Read_101/DisableCopyOnRead�Read_101/ReadVariableOp�Read_102/DisableCopyOnRead�Read_102/ReadVariableOp�Read_103/DisableCopyOnRead�Read_103/ReadVariableOp�Read_104/DisableCopyOnRead�Read_104/ReadVariableOp�Read_105/DisableCopyOnRead�Read_105/ReadVariableOp�Read_106/DisableCopyOnRead�Read_106/ReadVariableOp�Read_107/DisableCopyOnRead�Read_107/ReadVariableOp�Read_108/DisableCopyOnRead�Read_108/ReadVariableOp�Read_109/DisableCopyOnRead�Read_109/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_110/DisableCopyOnRead�Read_110/ReadVariableOp�Read_111/DisableCopyOnRead�Read_111/ReadVariableOp�Read_112/DisableCopyOnRead�Read_112/ReadVariableOp�Read_113/DisableCopyOnRead�Read_113/ReadVariableOp�Read_114/DisableCopyOnRead�Read_114/ReadVariableOp�Read_115/DisableCopyOnRead�Read_115/ReadVariableOp�Read_116/DisableCopyOnRead�Read_116/ReadVariableOp�Read_117/DisableCopyOnRead�Read_117/ReadVariableOp�Read_118/DisableCopyOnRead�Read_118/ReadVariableOp�Read_119/DisableCopyOnRead�Read_119/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_120/DisableCopyOnRead�Read_120/ReadVariableOp�Read_121/DisableCopyOnRead�Read_121/ReadVariableOp�Read_122/DisableCopyOnRead�Read_122/ReadVariableOp�Read_123/DisableCopyOnRead�Read_123/ReadVariableOp�Read_124/DisableCopyOnRead�Read_124/ReadVariableOp�Read_125/DisableCopyOnRead�Read_125/ReadVariableOp�Read_126/DisableCopyOnRead�Read_126/ReadVariableOp�Read_127/DisableCopyOnRead�Read_127/ReadVariableOp�Read_128/DisableCopyOnRead�Read_128/ReadVariableOp�Read_129/DisableCopyOnRead�Read_129/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_130/DisableCopyOnRead�Read_130/ReadVariableOp�Read_131/DisableCopyOnRead�Read_131/ReadVariableOp�Read_132/DisableCopyOnRead�Read_132/ReadVariableOp�Read_133/DisableCopyOnRead�Read_133/ReadVariableOp�Read_134/DisableCopyOnRead�Read_134/ReadVariableOp�Read_135/DisableCopyOnRead�Read_135/ReadVariableOp�Read_136/DisableCopyOnRead�Read_136/ReadVariableOp�Read_137/DisableCopyOnRead�Read_137/ReadVariableOp�Read_138/DisableCopyOnRead�Read_138/ReadVariableOp�Read_139/DisableCopyOnRead�Read_139/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_140/DisableCopyOnRead�Read_140/ReadVariableOp�Read_141/DisableCopyOnRead�Read_141/ReadVariableOp�Read_142/DisableCopyOnRead�Read_142/ReadVariableOp�Read_143/DisableCopyOnRead�Read_143/ReadVariableOp�Read_144/DisableCopyOnRead�Read_144/ReadVariableOp�Read_145/DisableCopyOnRead�Read_145/ReadVariableOp�Read_146/DisableCopyOnRead�Read_146/ReadVariableOp�Read_147/DisableCopyOnRead�Read_147/ReadVariableOp�Read_148/DisableCopyOnRead�Read_148/ReadVariableOp�Read_149/DisableCopyOnRead�Read_149/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_150/DisableCopyOnRead�Read_150/ReadVariableOp�Read_151/DisableCopyOnRead�Read_151/ReadVariableOp�Read_152/DisableCopyOnRead�Read_152/ReadVariableOp�Read_153/DisableCopyOnRead�Read_153/ReadVariableOp�Read_154/DisableCopyOnRead�Read_154/ReadVariableOp�Read_155/DisableCopyOnRead�Read_155/ReadVariableOp�Read_156/DisableCopyOnRead�Read_156/ReadVariableOp�Read_157/DisableCopyOnRead�Read_157/ReadVariableOp�Read_158/DisableCopyOnRead�Read_158/ReadVariableOp�Read_159/DisableCopyOnRead�Read_159/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_160/DisableCopyOnRead�Read_160/ReadVariableOp�Read_161/DisableCopyOnRead�Read_161/ReadVariableOp�Read_162/DisableCopyOnRead�Read_162/ReadVariableOp�Read_163/DisableCopyOnRead�Read_163/ReadVariableOp�Read_164/DisableCopyOnRead�Read_164/ReadVariableOp�Read_165/DisableCopyOnRead�Read_165/ReadVariableOp�Read_166/DisableCopyOnRead�Read_166/ReadVariableOp�Read_167/DisableCopyOnRead�Read_167/ReadVariableOp�Read_168/DisableCopyOnRead�Read_168/ReadVariableOp�Read_169/DisableCopyOnRead�Read_169/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_170/DisableCopyOnRead�Read_170/ReadVariableOp�Read_171/DisableCopyOnRead�Read_171/ReadVariableOp�Read_172/DisableCopyOnRead�Read_172/ReadVariableOp�Read_173/DisableCopyOnRead�Read_173/ReadVariableOp�Read_174/DisableCopyOnRead�Read_174/ReadVariableOp�Read_175/DisableCopyOnRead�Read_175/ReadVariableOp�Read_176/DisableCopyOnRead�Read_176/ReadVariableOp�Read_177/DisableCopyOnRead�Read_177/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_81/DisableCopyOnRead�Read_81/ReadVariableOp�Read_82/DisableCopyOnRead�Read_82/ReadVariableOp�Read_83/DisableCopyOnRead�Read_83/ReadVariableOp�Read_84/DisableCopyOnRead�Read_84/ReadVariableOp�Read_85/DisableCopyOnRead�Read_85/ReadVariableOp�Read_86/DisableCopyOnRead�Read_86/ReadVariableOp�Read_87/DisableCopyOnRead�Read_87/ReadVariableOp�Read_88/DisableCopyOnRead�Read_88/ReadVariableOp�Read_89/DisableCopyOnRead�Read_89/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOp�Read_90/DisableCopyOnRead�Read_90/ReadVariableOp�Read_91/DisableCopyOnRead�Read_91/ReadVariableOp�Read_92/DisableCopyOnRead�Read_92/ReadVariableOp�Read_93/DisableCopyOnRead�Read_93/ReadVariableOp�Read_94/DisableCopyOnRead�Read_94/ReadVariableOp�Read_95/DisableCopyOnRead�Read_95/ReadVariableOp�Read_96/DisableCopyOnRead�Read_96/ReadVariableOp�Read_97/DisableCopyOnRead�Read_97/ReadVariableOp�Read_98/DisableCopyOnRead�Read_98/ReadVariableOp�Read_99/DisableCopyOnRead�Read_99/ReadVariableOpw
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
: {
Read/DisableCopyOnReadDisableCopyOnRead)read_disablecopyonread_new_layer_1_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp)read_disablecopyonread_new_layer_1_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_1/DisableCopyOnReadDisableCopyOnRead)read_1_disablecopyonread_new_layer_1_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp)read_1_disablecopyonread_new_layer_1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_2/DisableCopyOnReadDisableCopyOnRead+read_2_disablecopyonread_new_layer_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp+read_2_disablecopyonread_new_layer_2_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_3/DisableCopyOnReadDisableCopyOnRead)read_3_disablecopyonread_new_layer_2_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp)read_3_disablecopyonread_new_layer_2_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_4/DisableCopyOnReadDisableCopyOnRead5read_4_disablecopyonread_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp5read_4_disablecopyonread_batch_normalization_13_gamma^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_5/DisableCopyOnReadDisableCopyOnRead4read_5_disablecopyonread_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp4read_5_disablecopyonread_batch_normalization_13_beta^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_6/DisableCopyOnReadDisableCopyOnRead;read_6_disablecopyonread_batch_normalization_13_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp;read_6_disablecopyonread_batch_normalization_13_moving_mean^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_7/DisableCopyOnReadDisableCopyOnRead?read_7_disablecopyonread_batch_normalization_13_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp?read_7_disablecopyonread_batch_normalization_13_moving_variance^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_8/DisableCopyOnReadDisableCopyOnRead+read_8_disablecopyonread_new_layer_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp+read_8_disablecopyonread_new_layer_3_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_9/DisableCopyOnReadDisableCopyOnRead)read_9_disablecopyonread_new_layer_3_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp)read_9_disablecopyonread_new_layer_3_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_10/DisableCopyOnReadDisableCopyOnRead,read_10_disablecopyonread_new_layer_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp,read_10_disablecopyonread_new_layer_4_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:
Read_11/DisableCopyOnReadDisableCopyOnRead*read_11_disablecopyonread_new_layer_4_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp*read_11_disablecopyonread_new_layer_4_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_12/DisableCopyOnReadDisableCopyOnRead6read_12_disablecopyonread_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp6read_12_disablecopyonread_batch_normalization_12_gamma^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_13/DisableCopyOnReadDisableCopyOnRead5read_13_disablecopyonread_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp5read_13_disablecopyonread_batch_normalization_12_beta^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_14/DisableCopyOnReadDisableCopyOnRead<read_14_disablecopyonread_batch_normalization_12_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp<read_14_disablecopyonread_batch_normalization_12_moving_mean^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_15/DisableCopyOnReadDisableCopyOnRead@read_15_disablecopyonread_batch_normalization_12_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp@read_15_disablecopyonread_batch_normalization_12_moving_variance^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_16/DisableCopyOnReadDisableCopyOnRead'read_16_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp'read_16_disablecopyonread_conv2d_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
:z
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_conv2d_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_18/DisableCopyOnReadDisableCopyOnRead)read_18_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp)read_18_disablecopyonread_conv2d_1_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_19/DisableCopyOnReadDisableCopyOnRead'read_19_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp'read_19_disablecopyonread_conv2d_1_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_20/DisableCopyOnReadDisableCopyOnRead)read_20_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp)read_20_disablecopyonread_conv2d_2_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_21/DisableCopyOnReadDisableCopyOnRead'read_21_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp'read_21_disablecopyonread_conv2d_2_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_22/DisableCopyOnReadDisableCopyOnRead)read_22_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp)read_22_disablecopyonread_conv2d_3_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_23/DisableCopyOnReadDisableCopyOnRead'read_23_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp'read_23_disablecopyonread_conv2d_3_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_24/DisableCopyOnReadDisableCopyOnRead6read_24_disablecopyonread_batch_normalization_11_gamma"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp6read_24_disablecopyonread_batch_normalization_11_gamma^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead5read_25_disablecopyonread_batch_normalization_11_beta"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp5read_25_disablecopyonread_batch_normalization_11_beta^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_26/DisableCopyOnReadDisableCopyOnRead<read_26_disablecopyonread_batch_normalization_11_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp<read_26_disablecopyonread_batch_normalization_11_moving_mean^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_27/DisableCopyOnReadDisableCopyOnRead@read_27_disablecopyonread_batch_normalization_11_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp@read_27_disablecopyonread_batch_normalization_11_moving_variance^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_28/DisableCopyOnReadDisableCopyOnRead)read_28_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp)read_28_disablecopyonread_conv2d_4_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_29/DisableCopyOnReadDisableCopyOnRead'read_29_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp'read_29_disablecopyonread_conv2d_4_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_30/DisableCopyOnReadDisableCopyOnRead)read_30_disablecopyonread_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp)read_30_disablecopyonread_conv2d_5_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_31/DisableCopyOnReadDisableCopyOnRead'read_31_disablecopyonread_conv2d_5_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp'read_31_disablecopyonread_conv2d_5_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_32/DisableCopyOnReadDisableCopyOnRead)read_32_disablecopyonread_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp)read_32_disablecopyonread_conv2d_6_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_33/DisableCopyOnReadDisableCopyOnRead'read_33_disablecopyonread_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp'read_33_disablecopyonread_conv2d_6_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_34/DisableCopyOnReadDisableCopyOnRead)read_34_disablecopyonread_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp)read_34_disablecopyonread_conv2d_7_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_35/DisableCopyOnReadDisableCopyOnRead'read_35_disablecopyonread_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp'read_35_disablecopyonread_conv2d_7_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_36/DisableCopyOnReadDisableCopyOnRead5read_36_disablecopyonread_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp5read_36_disablecopyonread_batch_normalization_1_gamma^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_37/DisableCopyOnReadDisableCopyOnRead4read_37_disablecopyonread_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp4read_37_disablecopyonread_batch_normalization_1_beta^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_38/DisableCopyOnReadDisableCopyOnRead;read_38_disablecopyonread_batch_normalization_1_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp;read_38_disablecopyonread_batch_normalization_1_moving_mean^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_39/DisableCopyOnReadDisableCopyOnRead?read_39_disablecopyonread_batch_normalization_1_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp?read_39_disablecopyonread_batch_normalization_1_moving_variance^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_40/DisableCopyOnReadDisableCopyOnRead)read_40_disablecopyonread_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp)read_40_disablecopyonread_conv2d_8_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_41/DisableCopyOnReadDisableCopyOnRead'read_41_disablecopyonread_conv2d_8_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp'read_41_disablecopyonread_conv2d_8_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_42/DisableCopyOnReadDisableCopyOnRead)read_42_disablecopyonread_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp)read_42_disablecopyonread_conv2d_9_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_43/DisableCopyOnReadDisableCopyOnRead'read_43_disablecopyonread_conv2d_9_bias"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp'read_43_disablecopyonread_conv2d_9_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_44/DisableCopyOnReadDisableCopyOnRead*read_44_disablecopyonread_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp*read_44_disablecopyonread_conv2d_10_kernel^Read_44/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_45/DisableCopyOnReadDisableCopyOnRead(read_45_disablecopyonread_conv2d_10_bias"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp(read_45_disablecopyonread_conv2d_10_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_46/DisableCopyOnReadDisableCopyOnRead*read_46_disablecopyonread_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp*read_46_disablecopyonread_conv2d_11_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_47/DisableCopyOnReadDisableCopyOnRead(read_47_disablecopyonread_conv2d_11_bias"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp(read_47_disablecopyonread_conv2d_11_bias^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_48/DisableCopyOnReadDisableCopyOnRead5read_48_disablecopyonread_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp5read_48_disablecopyonread_batch_normalization_2_gamma^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_49/DisableCopyOnReadDisableCopyOnRead4read_49_disablecopyonread_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp4read_49_disablecopyonread_batch_normalization_2_beta^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_50/DisableCopyOnReadDisableCopyOnRead;read_50_disablecopyonread_batch_normalization_2_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp;read_50_disablecopyonread_batch_normalization_2_moving_mean^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_51/DisableCopyOnReadDisableCopyOnRead?read_51_disablecopyonread_batch_normalization_2_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp?read_51_disablecopyonread_batch_normalization_2_moving_variance^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_52/DisableCopyOnReadDisableCopyOnRead*read_52_disablecopyonread_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp*read_52_disablecopyonread_conv2d_12_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_53/DisableCopyOnReadDisableCopyOnRead(read_53_disablecopyonread_conv2d_12_bias"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp(read_53_disablecopyonread_conv2d_12_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_54/DisableCopyOnReadDisableCopyOnRead*read_54_disablecopyonread_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp*read_54_disablecopyonread_conv2d_13_kernel^Read_54/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_55/DisableCopyOnReadDisableCopyOnRead(read_55_disablecopyonread_conv2d_13_bias"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp(read_55_disablecopyonread_conv2d_13_bias^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_56/DisableCopyOnReadDisableCopyOnRead*read_56_disablecopyonread_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp*read_56_disablecopyonread_conv2d_14_kernel^Read_56/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_57/DisableCopyOnReadDisableCopyOnRead(read_57_disablecopyonread_conv2d_14_bias"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp(read_57_disablecopyonread_conv2d_14_bias^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_58/DisableCopyOnReadDisableCopyOnRead*read_58_disablecopyonread_conv2d_15_kernel"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp*read_58_disablecopyonread_conv2d_15_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_59/DisableCopyOnReadDisableCopyOnRead(read_59_disablecopyonread_conv2d_15_bias"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp(read_59_disablecopyonread_conv2d_15_bias^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_60/DisableCopyOnReadDisableCopyOnRead5read_60_disablecopyonread_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp5read_60_disablecopyonread_batch_normalization_3_gamma^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_61/DisableCopyOnReadDisableCopyOnRead4read_61_disablecopyonread_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp4read_61_disablecopyonread_batch_normalization_3_beta^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_62/DisableCopyOnReadDisableCopyOnRead;read_62_disablecopyonread_batch_normalization_3_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp;read_62_disablecopyonread_batch_normalization_3_moving_mean^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_63/DisableCopyOnReadDisableCopyOnRead?read_63_disablecopyonread_batch_normalization_3_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp?read_63_disablecopyonread_batch_normalization_3_moving_variance^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_64/DisableCopyOnReadDisableCopyOnRead*read_64_disablecopyonread_conv2d_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp*read_64_disablecopyonread_conv2d_16_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*&
_output_shapes
: }
Read_65/DisableCopyOnReadDisableCopyOnRead(read_65_disablecopyonread_conv2d_16_bias"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp(read_65_disablecopyonread_conv2d_16_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_66/DisableCopyOnReadDisableCopyOnRead*read_66_disablecopyonread_conv2d_17_kernel"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp*read_66_disablecopyonread_conv2d_17_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0x
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  o
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*&
_output_shapes
:  }
Read_67/DisableCopyOnReadDisableCopyOnRead(read_67_disablecopyonread_conv2d_17_bias"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp(read_67_disablecopyonread_conv2d_17_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_68/DisableCopyOnReadDisableCopyOnRead*read_68_disablecopyonread_conv2d_18_kernel"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp*read_68_disablecopyonread_conv2d_18_kernel^Read_68/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0x
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  o
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*&
_output_shapes
:  }
Read_69/DisableCopyOnReadDisableCopyOnRead(read_69_disablecopyonread_conv2d_18_bias"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp(read_69_disablecopyonread_conv2d_18_bias^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_70/DisableCopyOnReadDisableCopyOnRead*read_70_disablecopyonread_conv2d_19_kernel"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp*read_70_disablecopyonread_conv2d_19_kernel^Read_70/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0x
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  o
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*&
_output_shapes
:  }
Read_71/DisableCopyOnReadDisableCopyOnRead(read_71_disablecopyonread_conv2d_19_bias"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp(read_71_disablecopyonread_conv2d_19_bias^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_72/DisableCopyOnReadDisableCopyOnRead5read_72_disablecopyonread_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp5read_72_disablecopyonread_batch_normalization_4_gamma^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_73/DisableCopyOnReadDisableCopyOnRead4read_73_disablecopyonread_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp4read_73_disablecopyonread_batch_normalization_4_beta^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_74/DisableCopyOnReadDisableCopyOnRead;read_74_disablecopyonread_batch_normalization_4_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp;read_74_disablecopyonread_batch_normalization_4_moving_mean^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_75/DisableCopyOnReadDisableCopyOnRead?read_75_disablecopyonread_batch_normalization_4_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp?read_75_disablecopyonread_batch_normalization_4_moving_variance^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_76/DisableCopyOnReadDisableCopyOnRead*read_76_disablecopyonread_conv2d_20_kernel"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp*read_76_disablecopyonread_conv2d_20_kernel^Read_76/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*&
_output_shapes
: @}
Read_77/DisableCopyOnReadDisableCopyOnRead(read_77_disablecopyonread_conv2d_20_bias"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp(read_77_disablecopyonread_conv2d_20_bias^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_78/DisableCopyOnReadDisableCopyOnRead*read_78_disablecopyonread_conv2d_21_kernel"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp*read_78_disablecopyonread_conv2d_21_kernel^Read_78/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_79/DisableCopyOnReadDisableCopyOnRead(read_79_disablecopyonread_conv2d_21_bias"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOp(read_79_disablecopyonread_conv2d_21_bias^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_80/DisableCopyOnReadDisableCopyOnRead*read_80_disablecopyonread_conv2d_22_kernel"/device:CPU:0*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOp*read_80_disablecopyonread_conv2d_22_kernel^Read_80/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_81/DisableCopyOnReadDisableCopyOnRead(read_81_disablecopyonread_conv2d_22_bias"/device:CPU:0*
_output_shapes
 �
Read_81/ReadVariableOpReadVariableOp(read_81_disablecopyonread_conv2d_22_bias^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_82/DisableCopyOnReadDisableCopyOnRead*read_82_disablecopyonread_conv2d_23_kernel"/device:CPU:0*
_output_shapes
 �
Read_82/ReadVariableOpReadVariableOp*read_82_disablecopyonread_conv2d_23_kernel^Read_82/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_83/DisableCopyOnReadDisableCopyOnRead(read_83_disablecopyonread_conv2d_23_bias"/device:CPU:0*
_output_shapes
 �
Read_83/ReadVariableOpReadVariableOp(read_83_disablecopyonread_conv2d_23_bias^Read_83/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_84/DisableCopyOnReadDisableCopyOnRead5read_84_disablecopyonread_batch_normalization_5_gamma"/device:CPU:0*
_output_shapes
 �
Read_84/ReadVariableOpReadVariableOp5read_84_disablecopyonread_batch_normalization_5_gamma^Read_84/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_85/DisableCopyOnReadDisableCopyOnRead4read_85_disablecopyonread_batch_normalization_5_beta"/device:CPU:0*
_output_shapes
 �
Read_85/ReadVariableOpReadVariableOp4read_85_disablecopyonread_batch_normalization_5_beta^Read_85/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_86/DisableCopyOnReadDisableCopyOnRead;read_86_disablecopyonread_batch_normalization_5_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_86/ReadVariableOpReadVariableOp;read_86_disablecopyonread_batch_normalization_5_moving_mean^Read_86/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_87/DisableCopyOnReadDisableCopyOnRead?read_87_disablecopyonread_batch_normalization_5_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_87/ReadVariableOpReadVariableOp?read_87_disablecopyonread_batch_normalization_5_moving_variance^Read_87/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_88/DisableCopyOnReadDisableCopyOnRead&read_88_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_88/ReadVariableOpReadVariableOp&read_88_disablecopyonread_dense_kernel^Read_88/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
� �*
dtype0r
Identity_176IdentityRead_88/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
� �i
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0* 
_output_shapes
:
� �y
Read_89/DisableCopyOnReadDisableCopyOnRead$read_89_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_89/ReadVariableOpReadVariableOp$read_89_disablecopyonread_dense_bias^Read_89/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_178IdentityRead_89/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_90/DisableCopyOnReadDisableCopyOnRead(read_90_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_90/ReadVariableOpReadVariableOp(read_90_disablecopyonread_dense_1_kernel^Read_90/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_180IdentityRead_90/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��{
Read_91/DisableCopyOnReadDisableCopyOnRead&read_91_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_91/ReadVariableOpReadVariableOp&read_91_disablecopyonread_dense_1_bias^Read_91/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_182IdentityRead_91/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_92/DisableCopyOnReadDisableCopyOnRead(read_92_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_92/ReadVariableOpReadVariableOp(read_92_disablecopyonread_dense_2_kernel^Read_92/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0q
Identity_184IdentityRead_92/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
h
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
{
Read_93/DisableCopyOnReadDisableCopyOnRead&read_93_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_93/ReadVariableOpReadVariableOp&read_93_disablecopyonread_dense_2_bias^Read_93/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0l
Identity_186IdentityRead_93/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
c
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*
_output_shapes
:
x
Read_94/DisableCopyOnReadDisableCopyOnRead#read_94_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_94/ReadVariableOpReadVariableOp#read_94_disablecopyonread_iteration^Read_94/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	h
Identity_188IdentityRead_94/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: _
Identity_189IdentityIdentity_188:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_95/DisableCopyOnReadDisableCopyOnRead'read_95_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_95/ReadVariableOpReadVariableOp'read_95_disablecopyonread_learning_rate^Read_95/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_190IdentityRead_95/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_191IdentityIdentity_190:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_96/DisableCopyOnReadDisableCopyOnRead2read_96_disablecopyonread_sgd_m_new_layer_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_96/ReadVariableOpReadVariableOp2read_96_disablecopyonread_sgd_m_new_layer_1_kernel^Read_96/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_192IdentityRead_96/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_193IdentityIdentity_192:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_97/DisableCopyOnReadDisableCopyOnRead0read_97_disablecopyonread_sgd_m_new_layer_1_bias"/device:CPU:0*
_output_shapes
 �
Read_97/ReadVariableOpReadVariableOp0read_97_disablecopyonread_sgd_m_new_layer_1_bias^Read_97/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_194IdentityRead_97/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_195IdentityIdentity_194:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_98/DisableCopyOnReadDisableCopyOnRead2read_98_disablecopyonread_sgd_m_new_layer_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_98/ReadVariableOpReadVariableOp2read_98_disablecopyonread_sgd_m_new_layer_2_kernel^Read_98/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_196IdentityRead_98/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_197IdentityIdentity_196:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_99/DisableCopyOnReadDisableCopyOnRead0read_99_disablecopyonread_sgd_m_new_layer_2_bias"/device:CPU:0*
_output_shapes
 �
Read_99/ReadVariableOpReadVariableOp0read_99_disablecopyonread_sgd_m_new_layer_2_bias^Read_99/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_198IdentityRead_99/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_199IdentityIdentity_198:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_100/DisableCopyOnReadDisableCopyOnRead=read_100_disablecopyonread_sgd_m_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 �
Read_100/ReadVariableOpReadVariableOp=read_100_disablecopyonread_sgd_m_batch_normalization_13_gamma^Read_100/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_200IdentityRead_100/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_201IdentityIdentity_200:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_101/DisableCopyOnReadDisableCopyOnRead<read_101_disablecopyonread_sgd_m_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 �
Read_101/ReadVariableOpReadVariableOp<read_101_disablecopyonread_sgd_m_batch_normalization_13_beta^Read_101/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_202IdentityRead_101/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_203IdentityIdentity_202:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_102/DisableCopyOnReadDisableCopyOnRead3read_102_disablecopyonread_sgd_m_new_layer_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_102/ReadVariableOpReadVariableOp3read_102_disablecopyonread_sgd_m_new_layer_3_kernel^Read_102/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_204IdentityRead_102/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_205IdentityIdentity_204:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_103/DisableCopyOnReadDisableCopyOnRead1read_103_disablecopyonread_sgd_m_new_layer_3_bias"/device:CPU:0*
_output_shapes
 �
Read_103/ReadVariableOpReadVariableOp1read_103_disablecopyonread_sgd_m_new_layer_3_bias^Read_103/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_206IdentityRead_103/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_207IdentityIdentity_206:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_104/DisableCopyOnReadDisableCopyOnRead3read_104_disablecopyonread_sgd_m_new_layer_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_104/ReadVariableOpReadVariableOp3read_104_disablecopyonread_sgd_m_new_layer_4_kernel^Read_104/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_208IdentityRead_104/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_209IdentityIdentity_208:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_105/DisableCopyOnReadDisableCopyOnRead1read_105_disablecopyonread_sgd_m_new_layer_4_bias"/device:CPU:0*
_output_shapes
 �
Read_105/ReadVariableOpReadVariableOp1read_105_disablecopyonread_sgd_m_new_layer_4_bias^Read_105/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_210IdentityRead_105/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_211IdentityIdentity_210:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_106/DisableCopyOnReadDisableCopyOnRead=read_106_disablecopyonread_sgd_m_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 �
Read_106/ReadVariableOpReadVariableOp=read_106_disablecopyonread_sgd_m_batch_normalization_12_gamma^Read_106/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_212IdentityRead_106/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_213IdentityIdentity_212:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_107/DisableCopyOnReadDisableCopyOnRead<read_107_disablecopyonread_sgd_m_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 �
Read_107/ReadVariableOpReadVariableOp<read_107_disablecopyonread_sgd_m_batch_normalization_12_beta^Read_107/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_214IdentityRead_107/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_215IdentityIdentity_214:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_108/DisableCopyOnReadDisableCopyOnRead.read_108_disablecopyonread_sgd_m_conv2d_kernel"/device:CPU:0*
_output_shapes
 �
Read_108/ReadVariableOpReadVariableOp.read_108_disablecopyonread_sgd_m_conv2d_kernel^Read_108/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_216IdentityRead_108/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_217IdentityIdentity_216:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_109/DisableCopyOnReadDisableCopyOnRead,read_109_disablecopyonread_sgd_m_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_109/ReadVariableOpReadVariableOp,read_109_disablecopyonread_sgd_m_conv2d_bias^Read_109/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_218IdentityRead_109/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_219IdentityIdentity_218:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_110/DisableCopyOnReadDisableCopyOnRead0read_110_disablecopyonread_sgd_m_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_110/ReadVariableOpReadVariableOp0read_110_disablecopyonread_sgd_m_conv2d_1_kernel^Read_110/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_220IdentityRead_110/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_221IdentityIdentity_220:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_111/DisableCopyOnReadDisableCopyOnRead.read_111_disablecopyonread_sgd_m_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_111/ReadVariableOpReadVariableOp.read_111_disablecopyonread_sgd_m_conv2d_1_bias^Read_111/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_222IdentityRead_111/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_223IdentityIdentity_222:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_112/DisableCopyOnReadDisableCopyOnRead0read_112_disablecopyonread_sgd_m_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_112/ReadVariableOpReadVariableOp0read_112_disablecopyonread_sgd_m_conv2d_2_kernel^Read_112/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_224IdentityRead_112/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_225IdentityIdentity_224:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_113/DisableCopyOnReadDisableCopyOnRead.read_113_disablecopyonread_sgd_m_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_113/ReadVariableOpReadVariableOp.read_113_disablecopyonread_sgd_m_conv2d_2_bias^Read_113/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_226IdentityRead_113/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_227IdentityIdentity_226:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_114/DisableCopyOnReadDisableCopyOnRead0read_114_disablecopyonread_sgd_m_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_114/ReadVariableOpReadVariableOp0read_114_disablecopyonread_sgd_m_conv2d_3_kernel^Read_114/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_228IdentityRead_114/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_229IdentityIdentity_228:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_115/DisableCopyOnReadDisableCopyOnRead.read_115_disablecopyonread_sgd_m_conv2d_3_bias"/device:CPU:0*
_output_shapes
 �
Read_115/ReadVariableOpReadVariableOp.read_115_disablecopyonread_sgd_m_conv2d_3_bias^Read_115/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_230IdentityRead_115/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_231IdentityIdentity_230:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_116/DisableCopyOnReadDisableCopyOnRead=read_116_disablecopyonread_sgd_m_batch_normalization_11_gamma"/device:CPU:0*
_output_shapes
 �
Read_116/ReadVariableOpReadVariableOp=read_116_disablecopyonread_sgd_m_batch_normalization_11_gamma^Read_116/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_232IdentityRead_116/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_233IdentityIdentity_232:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_117/DisableCopyOnReadDisableCopyOnRead<read_117_disablecopyonread_sgd_m_batch_normalization_11_beta"/device:CPU:0*
_output_shapes
 �
Read_117/ReadVariableOpReadVariableOp<read_117_disablecopyonread_sgd_m_batch_normalization_11_beta^Read_117/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_234IdentityRead_117/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_235IdentityIdentity_234:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_118/DisableCopyOnReadDisableCopyOnRead0read_118_disablecopyonread_sgd_m_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_118/ReadVariableOpReadVariableOp0read_118_disablecopyonread_sgd_m_conv2d_4_kernel^Read_118/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_236IdentityRead_118/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_237IdentityIdentity_236:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_119/DisableCopyOnReadDisableCopyOnRead.read_119_disablecopyonread_sgd_m_conv2d_4_bias"/device:CPU:0*
_output_shapes
 �
Read_119/ReadVariableOpReadVariableOp.read_119_disablecopyonread_sgd_m_conv2d_4_bias^Read_119/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_238IdentityRead_119/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_239IdentityIdentity_238:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_120/DisableCopyOnReadDisableCopyOnRead0read_120_disablecopyonread_sgd_m_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_120/ReadVariableOpReadVariableOp0read_120_disablecopyonread_sgd_m_conv2d_5_kernel^Read_120/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_240IdentityRead_120/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_241IdentityIdentity_240:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_121/DisableCopyOnReadDisableCopyOnRead.read_121_disablecopyonread_sgd_m_conv2d_5_bias"/device:CPU:0*
_output_shapes
 �
Read_121/ReadVariableOpReadVariableOp.read_121_disablecopyonread_sgd_m_conv2d_5_bias^Read_121/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_242IdentityRead_121/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_243IdentityIdentity_242:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_122/DisableCopyOnReadDisableCopyOnRead0read_122_disablecopyonread_sgd_m_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_122/ReadVariableOpReadVariableOp0read_122_disablecopyonread_sgd_m_conv2d_6_kernel^Read_122/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_244IdentityRead_122/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_245IdentityIdentity_244:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_123/DisableCopyOnReadDisableCopyOnRead.read_123_disablecopyonread_sgd_m_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_123/ReadVariableOpReadVariableOp.read_123_disablecopyonread_sgd_m_conv2d_6_bias^Read_123/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_246IdentityRead_123/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_247IdentityIdentity_246:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_124/DisableCopyOnReadDisableCopyOnRead0read_124_disablecopyonread_sgd_m_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_124/ReadVariableOpReadVariableOp0read_124_disablecopyonread_sgd_m_conv2d_7_kernel^Read_124/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_248IdentityRead_124/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_249IdentityIdentity_248:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_125/DisableCopyOnReadDisableCopyOnRead.read_125_disablecopyonread_sgd_m_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_125/ReadVariableOpReadVariableOp.read_125_disablecopyonread_sgd_m_conv2d_7_bias^Read_125/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_250IdentityRead_125/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_251IdentityIdentity_250:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_126/DisableCopyOnReadDisableCopyOnRead<read_126_disablecopyonread_sgd_m_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_126/ReadVariableOpReadVariableOp<read_126_disablecopyonread_sgd_m_batch_normalization_1_gamma^Read_126/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_252IdentityRead_126/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_253IdentityIdentity_252:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_127/DisableCopyOnReadDisableCopyOnRead;read_127_disablecopyonread_sgd_m_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_127/ReadVariableOpReadVariableOp;read_127_disablecopyonread_sgd_m_batch_normalization_1_beta^Read_127/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_254IdentityRead_127/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_255IdentityIdentity_254:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_128/DisableCopyOnReadDisableCopyOnRead0read_128_disablecopyonread_sgd_m_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_128/ReadVariableOpReadVariableOp0read_128_disablecopyonread_sgd_m_conv2d_8_kernel^Read_128/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_256IdentityRead_128/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_257IdentityIdentity_256:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_129/DisableCopyOnReadDisableCopyOnRead.read_129_disablecopyonread_sgd_m_conv2d_8_bias"/device:CPU:0*
_output_shapes
 �
Read_129/ReadVariableOpReadVariableOp.read_129_disablecopyonread_sgd_m_conv2d_8_bias^Read_129/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_258IdentityRead_129/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_259IdentityIdentity_258:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_130/DisableCopyOnReadDisableCopyOnRead0read_130_disablecopyonread_sgd_m_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 �
Read_130/ReadVariableOpReadVariableOp0read_130_disablecopyonread_sgd_m_conv2d_9_kernel^Read_130/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_260IdentityRead_130/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_261IdentityIdentity_260:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_131/DisableCopyOnReadDisableCopyOnRead.read_131_disablecopyonread_sgd_m_conv2d_9_bias"/device:CPU:0*
_output_shapes
 �
Read_131/ReadVariableOpReadVariableOp.read_131_disablecopyonread_sgd_m_conv2d_9_bias^Read_131/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_262IdentityRead_131/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_263IdentityIdentity_262:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_132/DisableCopyOnReadDisableCopyOnRead1read_132_disablecopyonread_sgd_m_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_132/ReadVariableOpReadVariableOp1read_132_disablecopyonread_sgd_m_conv2d_10_kernel^Read_132/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_264IdentityRead_132/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_265IdentityIdentity_264:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_133/DisableCopyOnReadDisableCopyOnRead/read_133_disablecopyonread_sgd_m_conv2d_10_bias"/device:CPU:0*
_output_shapes
 �
Read_133/ReadVariableOpReadVariableOp/read_133_disablecopyonread_sgd_m_conv2d_10_bias^Read_133/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_266IdentityRead_133/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_267IdentityIdentity_266:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_134/DisableCopyOnReadDisableCopyOnRead1read_134_disablecopyonread_sgd_m_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_134/ReadVariableOpReadVariableOp1read_134_disablecopyonread_sgd_m_conv2d_11_kernel^Read_134/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_268IdentityRead_134/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_269IdentityIdentity_268:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_135/DisableCopyOnReadDisableCopyOnRead/read_135_disablecopyonread_sgd_m_conv2d_11_bias"/device:CPU:0*
_output_shapes
 �
Read_135/ReadVariableOpReadVariableOp/read_135_disablecopyonread_sgd_m_conv2d_11_bias^Read_135/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_270IdentityRead_135/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_271IdentityIdentity_270:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_136/DisableCopyOnReadDisableCopyOnRead<read_136_disablecopyonread_sgd_m_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 �
Read_136/ReadVariableOpReadVariableOp<read_136_disablecopyonread_sgd_m_batch_normalization_2_gamma^Read_136/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_272IdentityRead_136/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_273IdentityIdentity_272:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_137/DisableCopyOnReadDisableCopyOnRead;read_137_disablecopyonread_sgd_m_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 �
Read_137/ReadVariableOpReadVariableOp;read_137_disablecopyonread_sgd_m_batch_normalization_2_beta^Read_137/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_274IdentityRead_137/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_275IdentityIdentity_274:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_138/DisableCopyOnReadDisableCopyOnRead1read_138_disablecopyonread_sgd_m_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 �
Read_138/ReadVariableOpReadVariableOp1read_138_disablecopyonread_sgd_m_conv2d_12_kernel^Read_138/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_276IdentityRead_138/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_277IdentityIdentity_276:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_139/DisableCopyOnReadDisableCopyOnRead/read_139_disablecopyonread_sgd_m_conv2d_12_bias"/device:CPU:0*
_output_shapes
 �
Read_139/ReadVariableOpReadVariableOp/read_139_disablecopyonread_sgd_m_conv2d_12_bias^Read_139/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_278IdentityRead_139/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_279IdentityIdentity_278:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_140/DisableCopyOnReadDisableCopyOnRead1read_140_disablecopyonread_sgd_m_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 �
Read_140/ReadVariableOpReadVariableOp1read_140_disablecopyonread_sgd_m_conv2d_13_kernel^Read_140/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_280IdentityRead_140/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_281IdentityIdentity_280:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_141/DisableCopyOnReadDisableCopyOnRead/read_141_disablecopyonread_sgd_m_conv2d_13_bias"/device:CPU:0*
_output_shapes
 �
Read_141/ReadVariableOpReadVariableOp/read_141_disablecopyonread_sgd_m_conv2d_13_bias^Read_141/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_282IdentityRead_141/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_283IdentityIdentity_282:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_142/DisableCopyOnReadDisableCopyOnRead1read_142_disablecopyonread_sgd_m_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_142/ReadVariableOpReadVariableOp1read_142_disablecopyonread_sgd_m_conv2d_14_kernel^Read_142/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_284IdentityRead_142/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_285IdentityIdentity_284:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_143/DisableCopyOnReadDisableCopyOnRead/read_143_disablecopyonread_sgd_m_conv2d_14_bias"/device:CPU:0*
_output_shapes
 �
Read_143/ReadVariableOpReadVariableOp/read_143_disablecopyonread_sgd_m_conv2d_14_bias^Read_143/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_286IdentityRead_143/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_287IdentityIdentity_286:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_144/DisableCopyOnReadDisableCopyOnRead1read_144_disablecopyonread_sgd_m_conv2d_15_kernel"/device:CPU:0*
_output_shapes
 �
Read_144/ReadVariableOpReadVariableOp1read_144_disablecopyonread_sgd_m_conv2d_15_kernel^Read_144/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0y
Identity_288IdentityRead_144/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_289IdentityIdentity_288:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_145/DisableCopyOnReadDisableCopyOnRead/read_145_disablecopyonread_sgd_m_conv2d_15_bias"/device:CPU:0*
_output_shapes
 �
Read_145/ReadVariableOpReadVariableOp/read_145_disablecopyonread_sgd_m_conv2d_15_bias^Read_145/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_290IdentityRead_145/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_291IdentityIdentity_290:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_146/DisableCopyOnReadDisableCopyOnRead<read_146_disablecopyonread_sgd_m_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 �
Read_146/ReadVariableOpReadVariableOp<read_146_disablecopyonread_sgd_m_batch_normalization_3_gamma^Read_146/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_292IdentityRead_146/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_293IdentityIdentity_292:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_147/DisableCopyOnReadDisableCopyOnRead;read_147_disablecopyonread_sgd_m_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 �
Read_147/ReadVariableOpReadVariableOp;read_147_disablecopyonread_sgd_m_batch_normalization_3_beta^Read_147/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_294IdentityRead_147/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_295IdentityIdentity_294:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_148/DisableCopyOnReadDisableCopyOnRead1read_148_disablecopyonread_sgd_m_conv2d_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_148/ReadVariableOpReadVariableOp1read_148_disablecopyonread_sgd_m_conv2d_16_kernel^Read_148/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0y
Identity_296IdentityRead_148/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_297IdentityIdentity_296:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_149/DisableCopyOnReadDisableCopyOnRead/read_149_disablecopyonread_sgd_m_conv2d_16_bias"/device:CPU:0*
_output_shapes
 �
Read_149/ReadVariableOpReadVariableOp/read_149_disablecopyonread_sgd_m_conv2d_16_bias^Read_149/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0m
Identity_298IdentityRead_149/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_299IdentityIdentity_298:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_150/DisableCopyOnReadDisableCopyOnRead1read_150_disablecopyonread_sgd_m_conv2d_17_kernel"/device:CPU:0*
_output_shapes
 �
Read_150/ReadVariableOpReadVariableOp1read_150_disablecopyonread_sgd_m_conv2d_17_kernel^Read_150/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0y
Identity_300IdentityRead_150/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  o
Identity_301IdentityIdentity_300:output:0"/device:CPU:0*
T0*&
_output_shapes
:  �
Read_151/DisableCopyOnReadDisableCopyOnRead/read_151_disablecopyonread_sgd_m_conv2d_17_bias"/device:CPU:0*
_output_shapes
 �
Read_151/ReadVariableOpReadVariableOp/read_151_disablecopyonread_sgd_m_conv2d_17_bias^Read_151/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0m
Identity_302IdentityRead_151/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_303IdentityIdentity_302:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_152/DisableCopyOnReadDisableCopyOnRead1read_152_disablecopyonread_sgd_m_conv2d_18_kernel"/device:CPU:0*
_output_shapes
 �
Read_152/ReadVariableOpReadVariableOp1read_152_disablecopyonread_sgd_m_conv2d_18_kernel^Read_152/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0y
Identity_304IdentityRead_152/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  o
Identity_305IdentityIdentity_304:output:0"/device:CPU:0*
T0*&
_output_shapes
:  �
Read_153/DisableCopyOnReadDisableCopyOnRead/read_153_disablecopyonread_sgd_m_conv2d_18_bias"/device:CPU:0*
_output_shapes
 �
Read_153/ReadVariableOpReadVariableOp/read_153_disablecopyonread_sgd_m_conv2d_18_bias^Read_153/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0m
Identity_306IdentityRead_153/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_307IdentityIdentity_306:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_154/DisableCopyOnReadDisableCopyOnRead1read_154_disablecopyonread_sgd_m_conv2d_19_kernel"/device:CPU:0*
_output_shapes
 �
Read_154/ReadVariableOpReadVariableOp1read_154_disablecopyonread_sgd_m_conv2d_19_kernel^Read_154/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0y
Identity_308IdentityRead_154/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  o
Identity_309IdentityIdentity_308:output:0"/device:CPU:0*
T0*&
_output_shapes
:  �
Read_155/DisableCopyOnReadDisableCopyOnRead/read_155_disablecopyonread_sgd_m_conv2d_19_bias"/device:CPU:0*
_output_shapes
 �
Read_155/ReadVariableOpReadVariableOp/read_155_disablecopyonread_sgd_m_conv2d_19_bias^Read_155/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0m
Identity_310IdentityRead_155/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_311IdentityIdentity_310:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_156/DisableCopyOnReadDisableCopyOnRead<read_156_disablecopyonread_sgd_m_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 �
Read_156/ReadVariableOpReadVariableOp<read_156_disablecopyonread_sgd_m_batch_normalization_4_gamma^Read_156/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0m
Identity_312IdentityRead_156/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_313IdentityIdentity_312:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_157/DisableCopyOnReadDisableCopyOnRead;read_157_disablecopyonread_sgd_m_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 �
Read_157/ReadVariableOpReadVariableOp;read_157_disablecopyonread_sgd_m_batch_normalization_4_beta^Read_157/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0m
Identity_314IdentityRead_157/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_315IdentityIdentity_314:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_158/DisableCopyOnReadDisableCopyOnRead1read_158_disablecopyonread_sgd_m_conv2d_20_kernel"/device:CPU:0*
_output_shapes
 �
Read_158/ReadVariableOpReadVariableOp1read_158_disablecopyonread_sgd_m_conv2d_20_kernel^Read_158/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0y
Identity_316IdentityRead_158/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_317IdentityIdentity_316:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_159/DisableCopyOnReadDisableCopyOnRead/read_159_disablecopyonread_sgd_m_conv2d_20_bias"/device:CPU:0*
_output_shapes
 �
Read_159/ReadVariableOpReadVariableOp/read_159_disablecopyonread_sgd_m_conv2d_20_bias^Read_159/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_318IdentityRead_159/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_319IdentityIdentity_318:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_160/DisableCopyOnReadDisableCopyOnRead1read_160_disablecopyonread_sgd_m_conv2d_21_kernel"/device:CPU:0*
_output_shapes
 �
Read_160/ReadVariableOpReadVariableOp1read_160_disablecopyonread_sgd_m_conv2d_21_kernel^Read_160/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_320IdentityRead_160/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_321IdentityIdentity_320:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_161/DisableCopyOnReadDisableCopyOnRead/read_161_disablecopyonread_sgd_m_conv2d_21_bias"/device:CPU:0*
_output_shapes
 �
Read_161/ReadVariableOpReadVariableOp/read_161_disablecopyonread_sgd_m_conv2d_21_bias^Read_161/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_322IdentityRead_161/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_323IdentityIdentity_322:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_162/DisableCopyOnReadDisableCopyOnRead1read_162_disablecopyonread_sgd_m_conv2d_22_kernel"/device:CPU:0*
_output_shapes
 �
Read_162/ReadVariableOpReadVariableOp1read_162_disablecopyonread_sgd_m_conv2d_22_kernel^Read_162/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_324IdentityRead_162/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_325IdentityIdentity_324:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_163/DisableCopyOnReadDisableCopyOnRead/read_163_disablecopyonread_sgd_m_conv2d_22_bias"/device:CPU:0*
_output_shapes
 �
Read_163/ReadVariableOpReadVariableOp/read_163_disablecopyonread_sgd_m_conv2d_22_bias^Read_163/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_326IdentityRead_163/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_327IdentityIdentity_326:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_164/DisableCopyOnReadDisableCopyOnRead1read_164_disablecopyonread_sgd_m_conv2d_23_kernel"/device:CPU:0*
_output_shapes
 �
Read_164/ReadVariableOpReadVariableOp1read_164_disablecopyonread_sgd_m_conv2d_23_kernel^Read_164/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_328IdentityRead_164/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_329IdentityIdentity_328:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_165/DisableCopyOnReadDisableCopyOnRead/read_165_disablecopyonread_sgd_m_conv2d_23_bias"/device:CPU:0*
_output_shapes
 �
Read_165/ReadVariableOpReadVariableOp/read_165_disablecopyonread_sgd_m_conv2d_23_bias^Read_165/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_330IdentityRead_165/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_331IdentityIdentity_330:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_166/DisableCopyOnReadDisableCopyOnRead<read_166_disablecopyonread_sgd_m_batch_normalization_5_gamma"/device:CPU:0*
_output_shapes
 �
Read_166/ReadVariableOpReadVariableOp<read_166_disablecopyonread_sgd_m_batch_normalization_5_gamma^Read_166/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_332IdentityRead_166/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_333IdentityIdentity_332:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_167/DisableCopyOnReadDisableCopyOnRead;read_167_disablecopyonread_sgd_m_batch_normalization_5_beta"/device:CPU:0*
_output_shapes
 �
Read_167/ReadVariableOpReadVariableOp;read_167_disablecopyonread_sgd_m_batch_normalization_5_beta^Read_167/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_334IdentityRead_167/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_335IdentityIdentity_334:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_168/DisableCopyOnReadDisableCopyOnRead-read_168_disablecopyonread_sgd_m_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_168/ReadVariableOpReadVariableOp-read_168_disablecopyonread_sgd_m_dense_kernel^Read_168/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
� �*
dtype0s
Identity_336IdentityRead_168/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
� �i
Identity_337IdentityIdentity_336:output:0"/device:CPU:0*
T0* 
_output_shapes
:
� ��
Read_169/DisableCopyOnReadDisableCopyOnRead+read_169_disablecopyonread_sgd_m_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_169/ReadVariableOpReadVariableOp+read_169_disablecopyonread_sgd_m_dense_bias^Read_169/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_338IdentityRead_169/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_339IdentityIdentity_338:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_170/DisableCopyOnReadDisableCopyOnRead/read_170_disablecopyonread_sgd_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_170/ReadVariableOpReadVariableOp/read_170_disablecopyonread_sgd_m_dense_1_kernel^Read_170/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0s
Identity_340IdentityRead_170/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_341IdentityIdentity_340:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_171/DisableCopyOnReadDisableCopyOnRead-read_171_disablecopyonread_sgd_m_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_171/ReadVariableOpReadVariableOp-read_171_disablecopyonread_sgd_m_dense_1_bias^Read_171/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_342IdentityRead_171/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_343IdentityIdentity_342:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_172/DisableCopyOnReadDisableCopyOnRead/read_172_disablecopyonread_sgd_m_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_172/ReadVariableOpReadVariableOp/read_172_disablecopyonread_sgd_m_dense_2_kernel^Read_172/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0r
Identity_344IdentityRead_172/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
h
Identity_345IdentityIdentity_344:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_173/DisableCopyOnReadDisableCopyOnRead-read_173_disablecopyonread_sgd_m_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_173/ReadVariableOpReadVariableOp-read_173_disablecopyonread_sgd_m_dense_2_bias^Read_173/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0m
Identity_346IdentityRead_173/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
c
Identity_347IdentityIdentity_346:output:0"/device:CPU:0*
T0*
_output_shapes
:
x
Read_174/DisableCopyOnReadDisableCopyOnRead"read_174_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_174/ReadVariableOpReadVariableOp"read_174_disablecopyonread_total_1^Read_174/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_348IdentityRead_174/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_349IdentityIdentity_348:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_175/DisableCopyOnReadDisableCopyOnRead"read_175_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_175/ReadVariableOpReadVariableOp"read_175_disablecopyonread_count_1^Read_175/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_350IdentityRead_175/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_351IdentityIdentity_350:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_176/DisableCopyOnReadDisableCopyOnRead read_176_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_176/ReadVariableOpReadVariableOp read_176_disablecopyonread_total^Read_176/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_352IdentityRead_176/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_353IdentityIdentity_352:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_177/DisableCopyOnReadDisableCopyOnRead read_177_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_177/ReadVariableOpReadVariableOp read_177_disablecopyonread_count^Read_177/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_354IdentityRead_177/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_355IdentityIdentity_354:output:0"/device:CPU:0*
T0*
_output_shapes
: �M
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�L
value�LB�L�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-20/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-20/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-20/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-25/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-25/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-25/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-25/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-29/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-30/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-30/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-30/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-30/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-31/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-31/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-32/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-32/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-33/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-33/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-34/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-34/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-35/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-35/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-35/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-35/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-36/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-36/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-37/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-37/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-38/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-38/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �"
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0Identity_189:output:0Identity_191:output:0Identity_193:output:0Identity_195:output:0Identity_197:output:0Identity_199:output:0Identity_201:output:0Identity_203:output:0Identity_205:output:0Identity_207:output:0Identity_209:output:0Identity_211:output:0Identity_213:output:0Identity_215:output:0Identity_217:output:0Identity_219:output:0Identity_221:output:0Identity_223:output:0Identity_225:output:0Identity_227:output:0Identity_229:output:0Identity_231:output:0Identity_233:output:0Identity_235:output:0Identity_237:output:0Identity_239:output:0Identity_241:output:0Identity_243:output:0Identity_245:output:0Identity_247:output:0Identity_249:output:0Identity_251:output:0Identity_253:output:0Identity_255:output:0Identity_257:output:0Identity_259:output:0Identity_261:output:0Identity_263:output:0Identity_265:output:0Identity_267:output:0Identity_269:output:0Identity_271:output:0Identity_273:output:0Identity_275:output:0Identity_277:output:0Identity_279:output:0Identity_281:output:0Identity_283:output:0Identity_285:output:0Identity_287:output:0Identity_289:output:0Identity_291:output:0Identity_293:output:0Identity_295:output:0Identity_297:output:0Identity_299:output:0Identity_301:output:0Identity_303:output:0Identity_305:output:0Identity_307:output:0Identity_309:output:0Identity_311:output:0Identity_313:output:0Identity_315:output:0Identity_317:output:0Identity_319:output:0Identity_321:output:0Identity_323:output:0Identity_325:output:0Identity_327:output:0Identity_329:output:0Identity_331:output:0Identity_333:output:0Identity_335:output:0Identity_337:output:0Identity_339:output:0Identity_341:output:0Identity_343:output:0Identity_345:output:0Identity_347:output:0Identity_349:output:0Identity_351:output:0Identity_353:output:0Identity_355:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *�
dtypes�
�2�	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_356Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_357IdentityIdentity_356:output:0^NoOp*
T0*
_output_shapes
: �K
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_100/DisableCopyOnRead^Read_100/ReadVariableOp^Read_101/DisableCopyOnRead^Read_101/ReadVariableOp^Read_102/DisableCopyOnRead^Read_102/ReadVariableOp^Read_103/DisableCopyOnRead^Read_103/ReadVariableOp^Read_104/DisableCopyOnRead^Read_104/ReadVariableOp^Read_105/DisableCopyOnRead^Read_105/ReadVariableOp^Read_106/DisableCopyOnRead^Read_106/ReadVariableOp^Read_107/DisableCopyOnRead^Read_107/ReadVariableOp^Read_108/DisableCopyOnRead^Read_108/ReadVariableOp^Read_109/DisableCopyOnRead^Read_109/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_110/DisableCopyOnRead^Read_110/ReadVariableOp^Read_111/DisableCopyOnRead^Read_111/ReadVariableOp^Read_112/DisableCopyOnRead^Read_112/ReadVariableOp^Read_113/DisableCopyOnRead^Read_113/ReadVariableOp^Read_114/DisableCopyOnRead^Read_114/ReadVariableOp^Read_115/DisableCopyOnRead^Read_115/ReadVariableOp^Read_116/DisableCopyOnRead^Read_116/ReadVariableOp^Read_117/DisableCopyOnRead^Read_117/ReadVariableOp^Read_118/DisableCopyOnRead^Read_118/ReadVariableOp^Read_119/DisableCopyOnRead^Read_119/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_120/DisableCopyOnRead^Read_120/ReadVariableOp^Read_121/DisableCopyOnRead^Read_121/ReadVariableOp^Read_122/DisableCopyOnRead^Read_122/ReadVariableOp^Read_123/DisableCopyOnRead^Read_123/ReadVariableOp^Read_124/DisableCopyOnRead^Read_124/ReadVariableOp^Read_125/DisableCopyOnRead^Read_125/ReadVariableOp^Read_126/DisableCopyOnRead^Read_126/ReadVariableOp^Read_127/DisableCopyOnRead^Read_127/ReadVariableOp^Read_128/DisableCopyOnRead^Read_128/ReadVariableOp^Read_129/DisableCopyOnRead^Read_129/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_130/DisableCopyOnRead^Read_130/ReadVariableOp^Read_131/DisableCopyOnRead^Read_131/ReadVariableOp^Read_132/DisableCopyOnRead^Read_132/ReadVariableOp^Read_133/DisableCopyOnRead^Read_133/ReadVariableOp^Read_134/DisableCopyOnRead^Read_134/ReadVariableOp^Read_135/DisableCopyOnRead^Read_135/ReadVariableOp^Read_136/DisableCopyOnRead^Read_136/ReadVariableOp^Read_137/DisableCopyOnRead^Read_137/ReadVariableOp^Read_138/DisableCopyOnRead^Read_138/ReadVariableOp^Read_139/DisableCopyOnRead^Read_139/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_140/DisableCopyOnRead^Read_140/ReadVariableOp^Read_141/DisableCopyOnRead^Read_141/ReadVariableOp^Read_142/DisableCopyOnRead^Read_142/ReadVariableOp^Read_143/DisableCopyOnRead^Read_143/ReadVariableOp^Read_144/DisableCopyOnRead^Read_144/ReadVariableOp^Read_145/DisableCopyOnRead^Read_145/ReadVariableOp^Read_146/DisableCopyOnRead^Read_146/ReadVariableOp^Read_147/DisableCopyOnRead^Read_147/ReadVariableOp^Read_148/DisableCopyOnRead^Read_148/ReadVariableOp^Read_149/DisableCopyOnRead^Read_149/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_150/DisableCopyOnRead^Read_150/ReadVariableOp^Read_151/DisableCopyOnRead^Read_151/ReadVariableOp^Read_152/DisableCopyOnRead^Read_152/ReadVariableOp^Read_153/DisableCopyOnRead^Read_153/ReadVariableOp^Read_154/DisableCopyOnRead^Read_154/ReadVariableOp^Read_155/DisableCopyOnRead^Read_155/ReadVariableOp^Read_156/DisableCopyOnRead^Read_156/ReadVariableOp^Read_157/DisableCopyOnRead^Read_157/ReadVariableOp^Read_158/DisableCopyOnRead^Read_158/ReadVariableOp^Read_159/DisableCopyOnRead^Read_159/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_160/DisableCopyOnRead^Read_160/ReadVariableOp^Read_161/DisableCopyOnRead^Read_161/ReadVariableOp^Read_162/DisableCopyOnRead^Read_162/ReadVariableOp^Read_163/DisableCopyOnRead^Read_163/ReadVariableOp^Read_164/DisableCopyOnRead^Read_164/ReadVariableOp^Read_165/DisableCopyOnRead^Read_165/ReadVariableOp^Read_166/DisableCopyOnRead^Read_166/ReadVariableOp^Read_167/DisableCopyOnRead^Read_167/ReadVariableOp^Read_168/DisableCopyOnRead^Read_168/ReadVariableOp^Read_169/DisableCopyOnRead^Read_169/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_170/DisableCopyOnRead^Read_170/ReadVariableOp^Read_171/DisableCopyOnRead^Read_171/ReadVariableOp^Read_172/DisableCopyOnRead^Read_172/ReadVariableOp^Read_173/DisableCopyOnRead^Read_173/ReadVariableOp^Read_174/DisableCopyOnRead^Read_174/ReadVariableOp^Read_175/DisableCopyOnRead^Read_175/ReadVariableOp^Read_176/DisableCopyOnRead^Read_176/ReadVariableOp^Read_177/DisableCopyOnRead^Read_177/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp^Read_94/DisableCopyOnRead^Read_94/ReadVariableOp^Read_95/DisableCopyOnRead^Read_95/ReadVariableOp^Read_96/DisableCopyOnRead^Read_96/ReadVariableOp^Read_97/DisableCopyOnRead^Read_97/ReadVariableOp^Read_98/DisableCopyOnRead^Read_98/ReadVariableOp^Read_99/DisableCopyOnRead^Read_99/ReadVariableOp*
_output_shapes
 "%
identity_357Identity_357:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp28
Read_100/DisableCopyOnReadRead_100/DisableCopyOnRead22
Read_100/ReadVariableOpRead_100/ReadVariableOp28
Read_101/DisableCopyOnReadRead_101/DisableCopyOnRead22
Read_101/ReadVariableOpRead_101/ReadVariableOp28
Read_102/DisableCopyOnReadRead_102/DisableCopyOnRead22
Read_102/ReadVariableOpRead_102/ReadVariableOp28
Read_103/DisableCopyOnReadRead_103/DisableCopyOnRead22
Read_103/ReadVariableOpRead_103/ReadVariableOp28
Read_104/DisableCopyOnReadRead_104/DisableCopyOnRead22
Read_104/ReadVariableOpRead_104/ReadVariableOp28
Read_105/DisableCopyOnReadRead_105/DisableCopyOnRead22
Read_105/ReadVariableOpRead_105/ReadVariableOp28
Read_106/DisableCopyOnReadRead_106/DisableCopyOnRead22
Read_106/ReadVariableOpRead_106/ReadVariableOp28
Read_107/DisableCopyOnReadRead_107/DisableCopyOnRead22
Read_107/ReadVariableOpRead_107/ReadVariableOp28
Read_108/DisableCopyOnReadRead_108/DisableCopyOnRead22
Read_108/ReadVariableOpRead_108/ReadVariableOp28
Read_109/DisableCopyOnReadRead_109/DisableCopyOnRead22
Read_109/ReadVariableOpRead_109/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp28
Read_110/DisableCopyOnReadRead_110/DisableCopyOnRead22
Read_110/ReadVariableOpRead_110/ReadVariableOp28
Read_111/DisableCopyOnReadRead_111/DisableCopyOnRead22
Read_111/ReadVariableOpRead_111/ReadVariableOp28
Read_112/DisableCopyOnReadRead_112/DisableCopyOnRead22
Read_112/ReadVariableOpRead_112/ReadVariableOp28
Read_113/DisableCopyOnReadRead_113/DisableCopyOnRead22
Read_113/ReadVariableOpRead_113/ReadVariableOp28
Read_114/DisableCopyOnReadRead_114/DisableCopyOnRead22
Read_114/ReadVariableOpRead_114/ReadVariableOp28
Read_115/DisableCopyOnReadRead_115/DisableCopyOnRead22
Read_115/ReadVariableOpRead_115/ReadVariableOp28
Read_116/DisableCopyOnReadRead_116/DisableCopyOnRead22
Read_116/ReadVariableOpRead_116/ReadVariableOp28
Read_117/DisableCopyOnReadRead_117/DisableCopyOnRead22
Read_117/ReadVariableOpRead_117/ReadVariableOp28
Read_118/DisableCopyOnReadRead_118/DisableCopyOnRead22
Read_118/ReadVariableOpRead_118/ReadVariableOp28
Read_119/DisableCopyOnReadRead_119/DisableCopyOnRead22
Read_119/ReadVariableOpRead_119/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp28
Read_120/DisableCopyOnReadRead_120/DisableCopyOnRead22
Read_120/ReadVariableOpRead_120/ReadVariableOp28
Read_121/DisableCopyOnReadRead_121/DisableCopyOnRead22
Read_121/ReadVariableOpRead_121/ReadVariableOp28
Read_122/DisableCopyOnReadRead_122/DisableCopyOnRead22
Read_122/ReadVariableOpRead_122/ReadVariableOp28
Read_123/DisableCopyOnReadRead_123/DisableCopyOnRead22
Read_123/ReadVariableOpRead_123/ReadVariableOp28
Read_124/DisableCopyOnReadRead_124/DisableCopyOnRead22
Read_124/ReadVariableOpRead_124/ReadVariableOp28
Read_125/DisableCopyOnReadRead_125/DisableCopyOnRead22
Read_125/ReadVariableOpRead_125/ReadVariableOp28
Read_126/DisableCopyOnReadRead_126/DisableCopyOnRead22
Read_126/ReadVariableOpRead_126/ReadVariableOp28
Read_127/DisableCopyOnReadRead_127/DisableCopyOnRead22
Read_127/ReadVariableOpRead_127/ReadVariableOp28
Read_128/DisableCopyOnReadRead_128/DisableCopyOnRead22
Read_128/ReadVariableOpRead_128/ReadVariableOp28
Read_129/DisableCopyOnReadRead_129/DisableCopyOnRead22
Read_129/ReadVariableOpRead_129/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp28
Read_130/DisableCopyOnReadRead_130/DisableCopyOnRead22
Read_130/ReadVariableOpRead_130/ReadVariableOp28
Read_131/DisableCopyOnReadRead_131/DisableCopyOnRead22
Read_131/ReadVariableOpRead_131/ReadVariableOp28
Read_132/DisableCopyOnReadRead_132/DisableCopyOnRead22
Read_132/ReadVariableOpRead_132/ReadVariableOp28
Read_133/DisableCopyOnReadRead_133/DisableCopyOnRead22
Read_133/ReadVariableOpRead_133/ReadVariableOp28
Read_134/DisableCopyOnReadRead_134/DisableCopyOnRead22
Read_134/ReadVariableOpRead_134/ReadVariableOp28
Read_135/DisableCopyOnReadRead_135/DisableCopyOnRead22
Read_135/ReadVariableOpRead_135/ReadVariableOp28
Read_136/DisableCopyOnReadRead_136/DisableCopyOnRead22
Read_136/ReadVariableOpRead_136/ReadVariableOp28
Read_137/DisableCopyOnReadRead_137/DisableCopyOnRead22
Read_137/ReadVariableOpRead_137/ReadVariableOp28
Read_138/DisableCopyOnReadRead_138/DisableCopyOnRead22
Read_138/ReadVariableOpRead_138/ReadVariableOp28
Read_139/DisableCopyOnReadRead_139/DisableCopyOnRead22
Read_139/ReadVariableOpRead_139/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp28
Read_140/DisableCopyOnReadRead_140/DisableCopyOnRead22
Read_140/ReadVariableOpRead_140/ReadVariableOp28
Read_141/DisableCopyOnReadRead_141/DisableCopyOnRead22
Read_141/ReadVariableOpRead_141/ReadVariableOp28
Read_142/DisableCopyOnReadRead_142/DisableCopyOnRead22
Read_142/ReadVariableOpRead_142/ReadVariableOp28
Read_143/DisableCopyOnReadRead_143/DisableCopyOnRead22
Read_143/ReadVariableOpRead_143/ReadVariableOp28
Read_144/DisableCopyOnReadRead_144/DisableCopyOnRead22
Read_144/ReadVariableOpRead_144/ReadVariableOp28
Read_145/DisableCopyOnReadRead_145/DisableCopyOnRead22
Read_145/ReadVariableOpRead_145/ReadVariableOp28
Read_146/DisableCopyOnReadRead_146/DisableCopyOnRead22
Read_146/ReadVariableOpRead_146/ReadVariableOp28
Read_147/DisableCopyOnReadRead_147/DisableCopyOnRead22
Read_147/ReadVariableOpRead_147/ReadVariableOp28
Read_148/DisableCopyOnReadRead_148/DisableCopyOnRead22
Read_148/ReadVariableOpRead_148/ReadVariableOp28
Read_149/DisableCopyOnReadRead_149/DisableCopyOnRead22
Read_149/ReadVariableOpRead_149/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp28
Read_150/DisableCopyOnReadRead_150/DisableCopyOnRead22
Read_150/ReadVariableOpRead_150/ReadVariableOp28
Read_151/DisableCopyOnReadRead_151/DisableCopyOnRead22
Read_151/ReadVariableOpRead_151/ReadVariableOp28
Read_152/DisableCopyOnReadRead_152/DisableCopyOnRead22
Read_152/ReadVariableOpRead_152/ReadVariableOp28
Read_153/DisableCopyOnReadRead_153/DisableCopyOnRead22
Read_153/ReadVariableOpRead_153/ReadVariableOp28
Read_154/DisableCopyOnReadRead_154/DisableCopyOnRead22
Read_154/ReadVariableOpRead_154/ReadVariableOp28
Read_155/DisableCopyOnReadRead_155/DisableCopyOnRead22
Read_155/ReadVariableOpRead_155/ReadVariableOp28
Read_156/DisableCopyOnReadRead_156/DisableCopyOnRead22
Read_156/ReadVariableOpRead_156/ReadVariableOp28
Read_157/DisableCopyOnReadRead_157/DisableCopyOnRead22
Read_157/ReadVariableOpRead_157/ReadVariableOp28
Read_158/DisableCopyOnReadRead_158/DisableCopyOnRead22
Read_158/ReadVariableOpRead_158/ReadVariableOp28
Read_159/DisableCopyOnReadRead_159/DisableCopyOnRead22
Read_159/ReadVariableOpRead_159/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp28
Read_160/DisableCopyOnReadRead_160/DisableCopyOnRead22
Read_160/ReadVariableOpRead_160/ReadVariableOp28
Read_161/DisableCopyOnReadRead_161/DisableCopyOnRead22
Read_161/ReadVariableOpRead_161/ReadVariableOp28
Read_162/DisableCopyOnReadRead_162/DisableCopyOnRead22
Read_162/ReadVariableOpRead_162/ReadVariableOp28
Read_163/DisableCopyOnReadRead_163/DisableCopyOnRead22
Read_163/ReadVariableOpRead_163/ReadVariableOp28
Read_164/DisableCopyOnReadRead_164/DisableCopyOnRead22
Read_164/ReadVariableOpRead_164/ReadVariableOp28
Read_165/DisableCopyOnReadRead_165/DisableCopyOnRead22
Read_165/ReadVariableOpRead_165/ReadVariableOp28
Read_166/DisableCopyOnReadRead_166/DisableCopyOnRead22
Read_166/ReadVariableOpRead_166/ReadVariableOp28
Read_167/DisableCopyOnReadRead_167/DisableCopyOnRead22
Read_167/ReadVariableOpRead_167/ReadVariableOp28
Read_168/DisableCopyOnReadRead_168/DisableCopyOnRead22
Read_168/ReadVariableOpRead_168/ReadVariableOp28
Read_169/DisableCopyOnReadRead_169/DisableCopyOnRead22
Read_169/ReadVariableOpRead_169/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp28
Read_170/DisableCopyOnReadRead_170/DisableCopyOnRead22
Read_170/ReadVariableOpRead_170/ReadVariableOp28
Read_171/DisableCopyOnReadRead_171/DisableCopyOnRead22
Read_171/ReadVariableOpRead_171/ReadVariableOp28
Read_172/DisableCopyOnReadRead_172/DisableCopyOnRead22
Read_172/ReadVariableOpRead_172/ReadVariableOp28
Read_173/DisableCopyOnReadRead_173/DisableCopyOnRead22
Read_173/ReadVariableOpRead_173/ReadVariableOp28
Read_174/DisableCopyOnReadRead_174/DisableCopyOnRead22
Read_174/ReadVariableOpRead_174/ReadVariableOp28
Read_175/DisableCopyOnReadRead_175/DisableCopyOnRead22
Read_175/ReadVariableOpRead_175/ReadVariableOp28
Read_176/DisableCopyOnReadRead_176/DisableCopyOnRead22
Read_176/ReadVariableOpRead_176/ReadVariableOp28
Read_177/DisableCopyOnReadRead_177/DisableCopyOnRead22
Read_177/ReadVariableOpRead_177/ReadVariableOp26
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
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp26
Read_94/DisableCopyOnReadRead_94/DisableCopyOnRead20
Read_94/ReadVariableOpRead_94/ReadVariableOp26
Read_95/DisableCopyOnReadRead_95/DisableCopyOnRead20
Read_95/ReadVariableOpRead_95/ReadVariableOp26
Read_96/DisableCopyOnReadRead_96/DisableCopyOnRead20
Read_96/ReadVariableOpRead_96/ReadVariableOp26
Read_97/DisableCopyOnReadRead_97/DisableCopyOnRead20
Read_97/ReadVariableOpRead_97/ReadVariableOp26
Read_98/DisableCopyOnReadRead_98/DisableCopyOnRead20
Read_98/ReadVariableOpRead_98/ReadVariableOp26
Read_99/DisableCopyOnReadRead_99/DisableCopyOnRead20
Read_99/ReadVariableOpRead_99/ReadVariableOp:>�9

_output_shapes
: 

_user_specified_nameConst:&�!

_user_specified_namecount:&�!

_user_specified_nametotal:(�#
!
_user_specified_name	count_1:(�#
!
_user_specified_name	total_1:3�.
,
_user_specified_nameSGD/m/dense_2/bias:5�0
.
_user_specified_nameSGD/m/dense_2/kernel:3�.
,
_user_specified_nameSGD/m/dense_1/bias:5�0
.
_user_specified_nameSGD/m/dense_1/kernel:1�,
*
_user_specified_nameSGD/m/dense/bias:3�.
,
_user_specified_nameSGD/m/dense/kernel:A�<
:
_user_specified_name" SGD/m/batch_normalization_5/beta:B�=
;
_user_specified_name#!SGD/m/batch_normalization_5/gamma:5�0
.
_user_specified_nameSGD/m/conv2d_23/bias:7�2
0
_user_specified_nameSGD/m/conv2d_23/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_22/bias:7�2
0
_user_specified_nameSGD/m/conv2d_22/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_21/bias:7�2
0
_user_specified_nameSGD/m/conv2d_21/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_20/bias:7�2
0
_user_specified_nameSGD/m/conv2d_20/kernel:A�<
:
_user_specified_name" SGD/m/batch_normalization_4/beta:B�=
;
_user_specified_name#!SGD/m/batch_normalization_4/gamma:5�0
.
_user_specified_nameSGD/m/conv2d_19/bias:7�2
0
_user_specified_nameSGD/m/conv2d_19/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_18/bias:7�2
0
_user_specified_nameSGD/m/conv2d_18/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_17/bias:7�2
0
_user_specified_nameSGD/m/conv2d_17/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_16/bias:7�2
0
_user_specified_nameSGD/m/conv2d_16/kernel:A�<
:
_user_specified_name" SGD/m/batch_normalization_3/beta:B�=
;
_user_specified_name#!SGD/m/batch_normalization_3/gamma:5�0
.
_user_specified_nameSGD/m/conv2d_15/bias:7�2
0
_user_specified_nameSGD/m/conv2d_15/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_14/bias:7�2
0
_user_specified_nameSGD/m/conv2d_14/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_13/bias:7�2
0
_user_specified_nameSGD/m/conv2d_13/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_12/bias:7�2
0
_user_specified_nameSGD/m/conv2d_12/kernel:A�<
:
_user_specified_name" SGD/m/batch_normalization_2/beta:B�=
;
_user_specified_name#!SGD/m/batch_normalization_2/gamma:5�0
.
_user_specified_nameSGD/m/conv2d_11/bias:7�2
0
_user_specified_nameSGD/m/conv2d_11/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_10/bias:7�2
0
_user_specified_nameSGD/m/conv2d_10/kernel:4�/
-
_user_specified_nameSGD/m/conv2d_9/bias:6�1
/
_user_specified_nameSGD/m/conv2d_9/kernel:4�/
-
_user_specified_nameSGD/m/conv2d_8/bias:6�1
/
_user_specified_nameSGD/m/conv2d_8/kernel:A�<
:
_user_specified_name" SGD/m/batch_normalization_1/beta:A=
;
_user_specified_name#!SGD/m/batch_normalization_1/gamma:3~/
-
_user_specified_nameSGD/m/conv2d_7/bias:5}1
/
_user_specified_nameSGD/m/conv2d_7/kernel:3|/
-
_user_specified_nameSGD/m/conv2d_6/bias:5{1
/
_user_specified_nameSGD/m/conv2d_6/kernel:3z/
-
_user_specified_nameSGD/m/conv2d_5/bias:5y1
/
_user_specified_nameSGD/m/conv2d_5/kernel:3x/
-
_user_specified_nameSGD/m/conv2d_4/bias:5w1
/
_user_specified_nameSGD/m/conv2d_4/kernel:Av=
;
_user_specified_name#!SGD/m/batch_normalization_11/beta:Bu>
<
_user_specified_name$"SGD/m/batch_normalization_11/gamma:3t/
-
_user_specified_nameSGD/m/conv2d_3/bias:5s1
/
_user_specified_nameSGD/m/conv2d_3/kernel:3r/
-
_user_specified_nameSGD/m/conv2d_2/bias:5q1
/
_user_specified_nameSGD/m/conv2d_2/kernel:3p/
-
_user_specified_nameSGD/m/conv2d_1/bias:5o1
/
_user_specified_nameSGD/m/conv2d_1/kernel:1n-
+
_user_specified_nameSGD/m/conv2d/bias:3m/
-
_user_specified_nameSGD/m/conv2d/kernel:Al=
;
_user_specified_name#!SGD/m/batch_normalization_12/beta:Bk>
<
_user_specified_name$"SGD/m/batch_normalization_12/gamma:6j2
0
_user_specified_nameSGD/m/new_layer_4/bias:8i4
2
_user_specified_nameSGD/m/new_layer_4/kernel:6h2
0
_user_specified_nameSGD/m/new_layer_3/bias:8g4
2
_user_specified_nameSGD/m/new_layer_3/kernel:Af=
;
_user_specified_name#!SGD/m/batch_normalization_13/beta:Be>
<
_user_specified_name$"SGD/m/batch_normalization_13/gamma:6d2
0
_user_specified_nameSGD/m/new_layer_2/bias:8c4
2
_user_specified_nameSGD/m/new_layer_2/kernel:6b2
0
_user_specified_nameSGD/m/new_layer_1/bias:8a4
2
_user_specified_nameSGD/m/new_layer_1/kernel:-`)
'
_user_specified_namelearning_rate:)_%
#
_user_specified_name	iteration:,^(
&
_user_specified_namedense_2/bias:.]*
(
_user_specified_namedense_2/kernel:,\(
&
_user_specified_namedense_1/bias:.[*
(
_user_specified_namedense_1/kernel:*Z&
$
_user_specified_name
dense/bias:,Y(
&
_user_specified_namedense/kernel:EXA
?
_user_specified_name'%batch_normalization_5/moving_variance:AW=
;
_user_specified_name#!batch_normalization_5/moving_mean::V6
4
_user_specified_namebatch_normalization_5/beta:;U7
5
_user_specified_namebatch_normalization_5/gamma:.T*
(
_user_specified_nameconv2d_23/bias:0S,
*
_user_specified_nameconv2d_23/kernel:.R*
(
_user_specified_nameconv2d_22/bias:0Q,
*
_user_specified_nameconv2d_22/kernel:.P*
(
_user_specified_nameconv2d_21/bias:0O,
*
_user_specified_nameconv2d_21/kernel:.N*
(
_user_specified_nameconv2d_20/bias:0M,
*
_user_specified_nameconv2d_20/kernel:ELA
?
_user_specified_name'%batch_normalization_4/moving_variance:AK=
;
_user_specified_name#!batch_normalization_4/moving_mean::J6
4
_user_specified_namebatch_normalization_4/beta:;I7
5
_user_specified_namebatch_normalization_4/gamma:.H*
(
_user_specified_nameconv2d_19/bias:0G,
*
_user_specified_nameconv2d_19/kernel:.F*
(
_user_specified_nameconv2d_18/bias:0E,
*
_user_specified_nameconv2d_18/kernel:.D*
(
_user_specified_nameconv2d_17/bias:0C,
*
_user_specified_nameconv2d_17/kernel:.B*
(
_user_specified_nameconv2d_16/bias:0A,
*
_user_specified_nameconv2d_16/kernel:E@A
?
_user_specified_name'%batch_normalization_3/moving_variance:A?=
;
_user_specified_name#!batch_normalization_3/moving_mean::>6
4
_user_specified_namebatch_normalization_3/beta:;=7
5
_user_specified_namebatch_normalization_3/gamma:.<*
(
_user_specified_nameconv2d_15/bias:0;,
*
_user_specified_nameconv2d_15/kernel:.:*
(
_user_specified_nameconv2d_14/bias:09,
*
_user_specified_nameconv2d_14/kernel:.8*
(
_user_specified_nameconv2d_13/bias:07,
*
_user_specified_nameconv2d_13/kernel:.6*
(
_user_specified_nameconv2d_12/bias:05,
*
_user_specified_nameconv2d_12/kernel:E4A
?
_user_specified_name'%batch_normalization_2/moving_variance:A3=
;
_user_specified_name#!batch_normalization_2/moving_mean::26
4
_user_specified_namebatch_normalization_2/beta:;17
5
_user_specified_namebatch_normalization_2/gamma:.0*
(
_user_specified_nameconv2d_11/bias:0/,
*
_user_specified_nameconv2d_11/kernel:..*
(
_user_specified_nameconv2d_10/bias:0-,
*
_user_specified_nameconv2d_10/kernel:-,)
'
_user_specified_nameconv2d_9/bias:/++
)
_user_specified_nameconv2d_9/kernel:-*)
'
_user_specified_nameconv2d_8/bias:/)+
)
_user_specified_nameconv2d_8/kernel:E(A
?
_user_specified_name'%batch_normalization_1/moving_variance:A'=
;
_user_specified_name#!batch_normalization_1/moving_mean::&6
4
_user_specified_namebatch_normalization_1/beta:;%7
5
_user_specified_namebatch_normalization_1/gamma:-$)
'
_user_specified_nameconv2d_7/bias:/#+
)
_user_specified_nameconv2d_7/kernel:-")
'
_user_specified_nameconv2d_6/bias:/!+
)
_user_specified_nameconv2d_6/kernel:- )
'
_user_specified_nameconv2d_5/bias:/+
)
_user_specified_nameconv2d_5/kernel:-)
'
_user_specified_nameconv2d_4/bias:/+
)
_user_specified_nameconv2d_4/kernel:FB
@
_user_specified_name(&batch_normalization_11/moving_variance:B>
<
_user_specified_name$"batch_normalization_11/moving_mean:;7
5
_user_specified_namebatch_normalization_11/beta:<8
6
_user_specified_namebatch_normalization_11/gamma:-)
'
_user_specified_nameconv2d_3/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:FB
@
_user_specified_name(&batch_normalization_12/moving_variance:B>
<
_user_specified_name$"batch_normalization_12/moving_mean:;7
5
_user_specified_namebatch_normalization_12/beta:<8
6
_user_specified_namebatch_normalization_12/gamma:0,
*
_user_specified_namenew_layer_4/bias:2.
,
_user_specified_namenew_layer_4/kernel:0
,
*
_user_specified_namenew_layer_3/bias:2	.
,
_user_specified_namenew_layer_3/kernel:FB
@
_user_specified_name(&batch_normalization_13/moving_variance:B>
<
_user_specified_name$"batch_normalization_13/moving_mean:;7
5
_user_specified_namebatch_normalization_13/beta:<8
6
_user_specified_namebatch_normalization_13/gamma:0,
*
_user_specified_namenew_layer_2/bias:2.
,
_user_specified_namenew_layer_2/kernel:0,
*
_user_specified_namenew_layer_1/bias:2.
,
_user_specified_namenew_layer_1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
F__inference_new_layer_2_layer_call_and_return_conditional_losses_29550

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
P
"__inference__update_step_xla_29472
gradient
variable:
� �*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
� �: *
	_noinline(:($
"
_user_specified_name
variable:J F
 
_output_shapes
:
� �
"
_user_specified_name
gradient
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_27041

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29227
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_30626

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_12_layer_call_and_return_conditional_losses_30190

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29347
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_27526

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_19_layer_call_fn_30391

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_27854w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������   <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30387:%!

_user_specified_name30385:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_27154

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29377
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
�
D__inference_conv2d_15_layer_call_and_return_conditional_losses_27780

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
F__inference_new_layer_2_layer_call_and_return_conditional_losses_27444

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
K
"__inference__update_step_xla_29487
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:�
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_29327
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
+__inference_new_layer_3_layer_call_fn_29621

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_new_layer_3_layer_call_and_return_conditional_losses_27469y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29617:%!

_user_specified_name29615:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_30637

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:���������� Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:���������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
)__inference_conv2d_22_layer_call_fn_30523

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_27912w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30519:%!

_user_specified_name30517:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_13_layer_call_fn_29576

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_26886�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29572:%!

_user_specified_name29570:%!

_user_specified_name29568:%!

_user_specified_name29566:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_12_layer_call_and_return_conditional_losses_27732

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
(__inference_conv2d_7_layer_call_fn_29935

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_27632y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29931:%!

_user_specified_name29929:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_17_layer_call_and_return_conditional_losses_27822

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30098

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_11_layer_call_fn_29820

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_27010�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29816:%!

_user_specified_name29814:%!

_user_specified_name29812:%!

_user_specified_name29810:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
(__inference_conv2d_5_layer_call_fn_29895

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_27600y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29891:%!

_user_specified_name29889:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29357
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
%__inference_dense_layer_call_fn_30646

inputs
unknown:
� �
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27960p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30642:%!

_user_specified_name30640:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29167
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_29247
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_27010

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29407
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
�
)__inference_conv2d_11_layer_call_fn_30087

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_27706y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30083:%!

_user_specified_name30081:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29187
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
D__inference_conv2d_16_layer_call_and_return_conditional_losses_27806

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29267
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_29147
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_27558

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_20_layer_call_fn_30483

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_27880w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30479:%!

_user_specified_name30477:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29272
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
K
/__inference_max_pooling2d_2_layer_call_fn_30165

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_27185�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29362
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�

�
5__inference_batch_normalization_2_layer_call_fn_30124

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_27154�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30120:%!

_user_specified_name30118:%!

_user_specified_name30116:%!

_user_specified_name30114:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29262
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_27280

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29946

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_29856

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29217
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
P
"__inference__update_step_xla_29482
gradient
variable:
��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
��: *
	_noinline(:($
"
_user_specified_name
variable:J F
 
_output_shapes
:
��
"
_user_specified_name
gradient
�D
�
*__inference_sequential_layer_call_fn_28429
rescaling_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:$

unknown_21:

unknown_22:

unknown_23:

unknown_24:

unknown_25:

unknown_26:$

unknown_27:

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:

unknown_35:

unknown_36:

unknown_37:

unknown_38:$

unknown_39:

unknown_40:$

unknown_41:

unknown_42:$

unknown_43:

unknown_44:$

unknown_45:

unknown_46:

unknown_47:

unknown_48:

unknown_49:

unknown_50:$

unknown_51:

unknown_52:$

unknown_53:

unknown_54:$

unknown_55:

unknown_56:$

unknown_57:

unknown_58:

unknown_59:

unknown_60:

unknown_61:

unknown_62:$

unknown_63: 

unknown_64: $

unknown_65:  

unknown_66: $

unknown_67:  

unknown_68: $

unknown_69:  

unknown_70: 

unknown_71: 

unknown_72: 

unknown_73: 

unknown_74: $

unknown_75: @

unknown_76:@$

unknown_77:@@

unknown_78:@$

unknown_79:@@

unknown_80:@$

unknown_81:@@

unknown_82:@

unknown_83:@

unknown_84:@

unknown_85:@

unknown_86:@

unknown_87:
� �

unknown_88:	�

unknown_89:
��

unknown_90:	�

unknown_91:	�


unknown_92:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrescaling_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76
unknown_77
unknown_78
unknown_79
unknown_80
unknown_81
unknown_82
unknown_83
unknown_84
unknown_85
unknown_86
unknown_87
unknown_88
unknown_89
unknown_90
unknown_91
unknown_92*j
Tinc
a2_*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*p
_read_only_resource_inputsR
PN	
 !"#$%&)*+,-./01256789:;<=>ABCDEFGHIJMNOPQRSTUVYZ[\]^*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_27997o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%^!

_user_specified_name28425:%]!

_user_specified_name28423:%\!

_user_specified_name28421:%[!

_user_specified_name28419:%Z!

_user_specified_name28417:%Y!

_user_specified_name28415:%X!

_user_specified_name28413:%W!

_user_specified_name28411:%V!

_user_specified_name28409:%U!

_user_specified_name28407:%T!

_user_specified_name28405:%S!

_user_specified_name28403:%R!

_user_specified_name28401:%Q!

_user_specified_name28399:%P!

_user_specified_name28397:%O!

_user_specified_name28395:%N!

_user_specified_name28393:%M!

_user_specified_name28391:%L!

_user_specified_name28389:%K!

_user_specified_name28387:%J!

_user_specified_name28385:%I!

_user_specified_name28383:%H!

_user_specified_name28381:%G!

_user_specified_name28379:%F!

_user_specified_name28377:%E!

_user_specified_name28375:%D!

_user_specified_name28373:%C!

_user_specified_name28371:%B!

_user_specified_name28369:%A!

_user_specified_name28367:%@!

_user_specified_name28365:%?!

_user_specified_name28363:%>!

_user_specified_name28361:%=!

_user_specified_name28359:%<!

_user_specified_name28357:%;!

_user_specified_name28355:%:!

_user_specified_name28353:%9!

_user_specified_name28351:%8!

_user_specified_name28349:%7!

_user_specified_name28347:%6!

_user_specified_name28345:%5!

_user_specified_name28343:%4!

_user_specified_name28341:%3!

_user_specified_name28339:%2!

_user_specified_name28337:%1!

_user_specified_name28335:%0!

_user_specified_name28333:%/!

_user_specified_name28331:%.!

_user_specified_name28329:%-!

_user_specified_name28327:%,!

_user_specified_name28325:%+!

_user_specified_name28323:%*!

_user_specified_name28321:%)!

_user_specified_name28319:%(!

_user_specified_name28317:%'!

_user_specified_name28315:%&!

_user_specified_name28313:%%!

_user_specified_name28311:%$!

_user_specified_name28309:%#!

_user_specified_name28307:%"!

_user_specified_name28305:%!!

_user_specified_name28303:% !

_user_specified_name28301:%!

_user_specified_name28299:%!

_user_specified_name28297:%!

_user_specified_name28295:%!

_user_specified_name28293:%!

_user_specified_name28291:%!

_user_specified_name28289:%!

_user_specified_name28287:%!

_user_specified_name28285:%!

_user_specified_name28283:%!

_user_specified_name28281:%!

_user_specified_name28279:%!

_user_specified_name28277:%!

_user_specified_name28275:%!

_user_specified_name28273:%!

_user_specified_name28271:%!

_user_specified_name28269:%!

_user_specified_name28267:%!

_user_specified_name28265:%!

_user_specified_name28263:%!

_user_specified_name28261:%!

_user_specified_name28259:%
!

_user_specified_name28257:%	!

_user_specified_name28255:%!

_user_specified_name28253:%!

_user_specified_name28251:%!

_user_specified_name28249:%!

_user_specified_name28247:%!

_user_specified_name28245:%!

_user_specified_name28243:%!

_user_specified_name28241:%!

_user_specified_name28239:b ^
1
_output_shapes
:�����������
)
_user_specified_namerescaling_input
�
�
(__inference_conv2d_2_layer_call_fn_29763

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_27542y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29759:%!

_user_specified_name29757:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
F__inference_new_layer_4_layer_call_and_return_conditional_losses_29652

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29277
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_29457
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
E
)__inference_rescaling_layer_call_fn_29502

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_27416j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30078

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_29734

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_23_layer_call_fn_30543

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_27928w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30539:%!

_user_specified_name30537:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
D__inference_conv2d_23_layer_call_and_return_conditional_losses_27928

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_30598

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_27542

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
�
@__inference_dense_layer_call_and_return_conditional_losses_27960

inputs2
matmul_readvariableop_resource:
� �.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_27584

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_5_layer_call_and_return_conditional_losses_27600

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29287
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�	
�
@__inference_dense_layer_call_and_return_conditional_losses_30656

inputs2
matmul_readvariableop_resource:
� �.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
�
D__inference_conv2d_22_layer_call_and_return_conditional_losses_30534

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_27370

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_27082

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_30160

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_14_layer_call_fn_30219

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_27764w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30215:%!

_user_specified_name30213:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
(__inference_conv2d_1_layer_call_fn_29743

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_27526y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29739:%!

_user_specified_name29737:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
+__inference_new_layer_1_layer_call_fn_29519

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_new_layer_1_layer_call_and_return_conditional_losses_27428y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29515:%!

_user_specified_name29513:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29257
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_29177
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
V
"__inference__update_step_xla_29222
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_30474

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29152
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
�
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29926

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_15_layer_call_and_return_conditional_losses_30250

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_27226

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29307
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_30675

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_8_layer_call_and_return_conditional_losses_27658

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29197
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
V
"__inference__update_step_xla_29182
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
�
(__inference_conv2d_8_layer_call_fn_30027

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_27658y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30023:%!

_user_specified_name30021:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
5__inference_batch_normalization_1_layer_call_fn_29972

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_27082�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29968:%!

_user_specified_name29966:%!

_user_specified_name29964:%!

_user_specified_name29962:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
(__inference_conv2d_4_layer_call_fn_29875

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_27584y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29871:%!

_user_specified_name29869:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_30170

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29322
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
O
"__inference__update_step_xla_29492
gradient
variable:	�
*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	�
: *
	_noinline(:($
"
_user_specified_name
variable:I E

_output_shapes
:	�

"
_user_specified_name
gradient
�
V
"__inference__update_step_xla_29452
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient
�
�
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_29696

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29437
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
�
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_30446

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29417
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
�
D__inference_conv2d_11_layer_call_and_return_conditional_losses_27706

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_15_layer_call_fn_30239

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_27780w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30235:%!

_user_specified_name30233:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�	
�
B__inference_dense_2_layer_call_and_return_conditional_losses_30694

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_19_layer_call_and_return_conditional_losses_27854

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
F__inference_new_layer_3_layer_call_and_return_conditional_losses_27469

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
(__inference_conv2d_9_layer_call_fn_30047

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_27674y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30043:%!

_user_specified_name30041:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_12_layer_call_fn_29678

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_26948�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29674:%!

_user_specified_name29672:%!

_user_specified_name29670:%!

_user_specified_name29668:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_27401

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
+__inference_new_layer_2_layer_call_fn_29539

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_new_layer_2_layer_call_and_return_conditional_losses_27444y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29535:%!

_user_specified_name29533:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29337
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
C__inference_conv2d_7_layer_call_and_return_conditional_losses_27632

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29117
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_27113

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29127
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
V
"__inference__update_step_xla_29422
gradient"
variable: @*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: @: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
: @
"
_user_specified_name
gradient
�
�
D__inference_conv2d_20_layer_call_and_return_conditional_losses_30494

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
C__inference_conv2d_6_layer_call_and_return_conditional_losses_27616

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29242
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
�
D__inference_conv2d_21_layer_call_and_return_conditional_losses_27896

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_30230

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_1_layer_call_fn_30013

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_27113�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29352
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
�
'__inference_dense_1_layer_call_fn_30665

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_27975p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30661:%!

_user_specified_name30659:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_30142

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_30018

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_21_layer_call_fn_30503

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_27896w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30499:%!

_user_specified_name30497:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
D__inference_conv2d_17_layer_call_and_return_conditional_losses_30362

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_30312

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29192
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_29447
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_29794

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29392
gradient"
variable:  *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:  : *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:  
"
_user_specified_name
gradient
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_30008

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
ܹ
�t
!__inference__traced_restore_32327
file_prefix=
#assignvariableop_new_layer_1_kernel:1
#assignvariableop_1_new_layer_1_bias:?
%assignvariableop_2_new_layer_2_kernel:1
#assignvariableop_3_new_layer_2_bias:=
/assignvariableop_4_batch_normalization_13_gamma:<
.assignvariableop_5_batch_normalization_13_beta:C
5assignvariableop_6_batch_normalization_13_moving_mean:G
9assignvariableop_7_batch_normalization_13_moving_variance:?
%assignvariableop_8_new_layer_3_kernel:1
#assignvariableop_9_new_layer_3_bias:@
&assignvariableop_10_new_layer_4_kernel:2
$assignvariableop_11_new_layer_4_bias:>
0assignvariableop_12_batch_normalization_12_gamma:=
/assignvariableop_13_batch_normalization_12_beta:D
6assignvariableop_14_batch_normalization_12_moving_mean:H
:assignvariableop_15_batch_normalization_12_moving_variance:;
!assignvariableop_16_conv2d_kernel:-
assignvariableop_17_conv2d_bias:=
#assignvariableop_18_conv2d_1_kernel:/
!assignvariableop_19_conv2d_1_bias:=
#assignvariableop_20_conv2d_2_kernel:/
!assignvariableop_21_conv2d_2_bias:=
#assignvariableop_22_conv2d_3_kernel:/
!assignvariableop_23_conv2d_3_bias:>
0assignvariableop_24_batch_normalization_11_gamma:=
/assignvariableop_25_batch_normalization_11_beta:D
6assignvariableop_26_batch_normalization_11_moving_mean:H
:assignvariableop_27_batch_normalization_11_moving_variance:=
#assignvariableop_28_conv2d_4_kernel:/
!assignvariableop_29_conv2d_4_bias:=
#assignvariableop_30_conv2d_5_kernel:/
!assignvariableop_31_conv2d_5_bias:=
#assignvariableop_32_conv2d_6_kernel:/
!assignvariableop_33_conv2d_6_bias:=
#assignvariableop_34_conv2d_7_kernel:/
!assignvariableop_35_conv2d_7_bias:=
/assignvariableop_36_batch_normalization_1_gamma:<
.assignvariableop_37_batch_normalization_1_beta:C
5assignvariableop_38_batch_normalization_1_moving_mean:G
9assignvariableop_39_batch_normalization_1_moving_variance:=
#assignvariableop_40_conv2d_8_kernel:/
!assignvariableop_41_conv2d_8_bias:=
#assignvariableop_42_conv2d_9_kernel:/
!assignvariableop_43_conv2d_9_bias:>
$assignvariableop_44_conv2d_10_kernel:0
"assignvariableop_45_conv2d_10_bias:>
$assignvariableop_46_conv2d_11_kernel:0
"assignvariableop_47_conv2d_11_bias:=
/assignvariableop_48_batch_normalization_2_gamma:<
.assignvariableop_49_batch_normalization_2_beta:C
5assignvariableop_50_batch_normalization_2_moving_mean:G
9assignvariableop_51_batch_normalization_2_moving_variance:>
$assignvariableop_52_conv2d_12_kernel:0
"assignvariableop_53_conv2d_12_bias:>
$assignvariableop_54_conv2d_13_kernel:0
"assignvariableop_55_conv2d_13_bias:>
$assignvariableop_56_conv2d_14_kernel:0
"assignvariableop_57_conv2d_14_bias:>
$assignvariableop_58_conv2d_15_kernel:0
"assignvariableop_59_conv2d_15_bias:=
/assignvariableop_60_batch_normalization_3_gamma:<
.assignvariableop_61_batch_normalization_3_beta:C
5assignvariableop_62_batch_normalization_3_moving_mean:G
9assignvariableop_63_batch_normalization_3_moving_variance:>
$assignvariableop_64_conv2d_16_kernel: 0
"assignvariableop_65_conv2d_16_bias: >
$assignvariableop_66_conv2d_17_kernel:  0
"assignvariableop_67_conv2d_17_bias: >
$assignvariableop_68_conv2d_18_kernel:  0
"assignvariableop_69_conv2d_18_bias: >
$assignvariableop_70_conv2d_19_kernel:  0
"assignvariableop_71_conv2d_19_bias: =
/assignvariableop_72_batch_normalization_4_gamma: <
.assignvariableop_73_batch_normalization_4_beta: C
5assignvariableop_74_batch_normalization_4_moving_mean: G
9assignvariableop_75_batch_normalization_4_moving_variance: >
$assignvariableop_76_conv2d_20_kernel: @0
"assignvariableop_77_conv2d_20_bias:@>
$assignvariableop_78_conv2d_21_kernel:@@0
"assignvariableop_79_conv2d_21_bias:@>
$assignvariableop_80_conv2d_22_kernel:@@0
"assignvariableop_81_conv2d_22_bias:@>
$assignvariableop_82_conv2d_23_kernel:@@0
"assignvariableop_83_conv2d_23_bias:@=
/assignvariableop_84_batch_normalization_5_gamma:@<
.assignvariableop_85_batch_normalization_5_beta:@C
5assignvariableop_86_batch_normalization_5_moving_mean:@G
9assignvariableop_87_batch_normalization_5_moving_variance:@4
 assignvariableop_88_dense_kernel:
� �-
assignvariableop_89_dense_bias:	�6
"assignvariableop_90_dense_1_kernel:
��/
 assignvariableop_91_dense_1_bias:	�5
"assignvariableop_92_dense_2_kernel:	�
.
 assignvariableop_93_dense_2_bias:
'
assignvariableop_94_iteration:	 +
!assignvariableop_95_learning_rate: F
,assignvariableop_96_sgd_m_new_layer_1_kernel:8
*assignvariableop_97_sgd_m_new_layer_1_bias:F
,assignvariableop_98_sgd_m_new_layer_2_kernel:8
*assignvariableop_99_sgd_m_new_layer_2_bias:E
7assignvariableop_100_sgd_m_batch_normalization_13_gamma:D
6assignvariableop_101_sgd_m_batch_normalization_13_beta:G
-assignvariableop_102_sgd_m_new_layer_3_kernel:9
+assignvariableop_103_sgd_m_new_layer_3_bias:G
-assignvariableop_104_sgd_m_new_layer_4_kernel:9
+assignvariableop_105_sgd_m_new_layer_4_bias:E
7assignvariableop_106_sgd_m_batch_normalization_12_gamma:D
6assignvariableop_107_sgd_m_batch_normalization_12_beta:B
(assignvariableop_108_sgd_m_conv2d_kernel:4
&assignvariableop_109_sgd_m_conv2d_bias:D
*assignvariableop_110_sgd_m_conv2d_1_kernel:6
(assignvariableop_111_sgd_m_conv2d_1_bias:D
*assignvariableop_112_sgd_m_conv2d_2_kernel:6
(assignvariableop_113_sgd_m_conv2d_2_bias:D
*assignvariableop_114_sgd_m_conv2d_3_kernel:6
(assignvariableop_115_sgd_m_conv2d_3_bias:E
7assignvariableop_116_sgd_m_batch_normalization_11_gamma:D
6assignvariableop_117_sgd_m_batch_normalization_11_beta:D
*assignvariableop_118_sgd_m_conv2d_4_kernel:6
(assignvariableop_119_sgd_m_conv2d_4_bias:D
*assignvariableop_120_sgd_m_conv2d_5_kernel:6
(assignvariableop_121_sgd_m_conv2d_5_bias:D
*assignvariableop_122_sgd_m_conv2d_6_kernel:6
(assignvariableop_123_sgd_m_conv2d_6_bias:D
*assignvariableop_124_sgd_m_conv2d_7_kernel:6
(assignvariableop_125_sgd_m_conv2d_7_bias:D
6assignvariableop_126_sgd_m_batch_normalization_1_gamma:C
5assignvariableop_127_sgd_m_batch_normalization_1_beta:D
*assignvariableop_128_sgd_m_conv2d_8_kernel:6
(assignvariableop_129_sgd_m_conv2d_8_bias:D
*assignvariableop_130_sgd_m_conv2d_9_kernel:6
(assignvariableop_131_sgd_m_conv2d_9_bias:E
+assignvariableop_132_sgd_m_conv2d_10_kernel:7
)assignvariableop_133_sgd_m_conv2d_10_bias:E
+assignvariableop_134_sgd_m_conv2d_11_kernel:7
)assignvariableop_135_sgd_m_conv2d_11_bias:D
6assignvariableop_136_sgd_m_batch_normalization_2_gamma:C
5assignvariableop_137_sgd_m_batch_normalization_2_beta:E
+assignvariableop_138_sgd_m_conv2d_12_kernel:7
)assignvariableop_139_sgd_m_conv2d_12_bias:E
+assignvariableop_140_sgd_m_conv2d_13_kernel:7
)assignvariableop_141_sgd_m_conv2d_13_bias:E
+assignvariableop_142_sgd_m_conv2d_14_kernel:7
)assignvariableop_143_sgd_m_conv2d_14_bias:E
+assignvariableop_144_sgd_m_conv2d_15_kernel:7
)assignvariableop_145_sgd_m_conv2d_15_bias:D
6assignvariableop_146_sgd_m_batch_normalization_3_gamma:C
5assignvariableop_147_sgd_m_batch_normalization_3_beta:E
+assignvariableop_148_sgd_m_conv2d_16_kernel: 7
)assignvariableop_149_sgd_m_conv2d_16_bias: E
+assignvariableop_150_sgd_m_conv2d_17_kernel:  7
)assignvariableop_151_sgd_m_conv2d_17_bias: E
+assignvariableop_152_sgd_m_conv2d_18_kernel:  7
)assignvariableop_153_sgd_m_conv2d_18_bias: E
+assignvariableop_154_sgd_m_conv2d_19_kernel:  7
)assignvariableop_155_sgd_m_conv2d_19_bias: D
6assignvariableop_156_sgd_m_batch_normalization_4_gamma: C
5assignvariableop_157_sgd_m_batch_normalization_4_beta: E
+assignvariableop_158_sgd_m_conv2d_20_kernel: @7
)assignvariableop_159_sgd_m_conv2d_20_bias:@E
+assignvariableop_160_sgd_m_conv2d_21_kernel:@@7
)assignvariableop_161_sgd_m_conv2d_21_bias:@E
+assignvariableop_162_sgd_m_conv2d_22_kernel:@@7
)assignvariableop_163_sgd_m_conv2d_22_bias:@E
+assignvariableop_164_sgd_m_conv2d_23_kernel:@@7
)assignvariableop_165_sgd_m_conv2d_23_bias:@D
6assignvariableop_166_sgd_m_batch_normalization_5_gamma:@C
5assignvariableop_167_sgd_m_batch_normalization_5_beta:@;
'assignvariableop_168_sgd_m_dense_kernel:
� �4
%assignvariableop_169_sgd_m_dense_bias:	�=
)assignvariableop_170_sgd_m_dense_1_kernel:
��6
'assignvariableop_171_sgd_m_dense_1_bias:	�<
)assignvariableop_172_sgd_m_dense_2_kernel:	�
5
'assignvariableop_173_sgd_m_dense_2_bias:
&
assignvariableop_174_total_1: &
assignvariableop_175_count_1: $
assignvariableop_176_total: $
assignvariableop_177_count: 
identity_179��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_107�AssignVariableOp_108�AssignVariableOp_109�AssignVariableOp_11�AssignVariableOp_110�AssignVariableOp_111�AssignVariableOp_112�AssignVariableOp_113�AssignVariableOp_114�AssignVariableOp_115�AssignVariableOp_116�AssignVariableOp_117�AssignVariableOp_118�AssignVariableOp_119�AssignVariableOp_12�AssignVariableOp_120�AssignVariableOp_121�AssignVariableOp_122�AssignVariableOp_123�AssignVariableOp_124�AssignVariableOp_125�AssignVariableOp_126�AssignVariableOp_127�AssignVariableOp_128�AssignVariableOp_129�AssignVariableOp_13�AssignVariableOp_130�AssignVariableOp_131�AssignVariableOp_132�AssignVariableOp_133�AssignVariableOp_134�AssignVariableOp_135�AssignVariableOp_136�AssignVariableOp_137�AssignVariableOp_138�AssignVariableOp_139�AssignVariableOp_14�AssignVariableOp_140�AssignVariableOp_141�AssignVariableOp_142�AssignVariableOp_143�AssignVariableOp_144�AssignVariableOp_145�AssignVariableOp_146�AssignVariableOp_147�AssignVariableOp_148�AssignVariableOp_149�AssignVariableOp_15�AssignVariableOp_150�AssignVariableOp_151�AssignVariableOp_152�AssignVariableOp_153�AssignVariableOp_154�AssignVariableOp_155�AssignVariableOp_156�AssignVariableOp_157�AssignVariableOp_158�AssignVariableOp_159�AssignVariableOp_16�AssignVariableOp_160�AssignVariableOp_161�AssignVariableOp_162�AssignVariableOp_163�AssignVariableOp_164�AssignVariableOp_165�AssignVariableOp_166�AssignVariableOp_167�AssignVariableOp_168�AssignVariableOp_169�AssignVariableOp_17�AssignVariableOp_170�AssignVariableOp_171�AssignVariableOp_172�AssignVariableOp_173�AssignVariableOp_174�AssignVariableOp_175�AssignVariableOp_176�AssignVariableOp_177�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�M
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�L
value�LB�L�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-20/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-20/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-20/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-25/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-25/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-25/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-25/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-29/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-30/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-30/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-30/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-30/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-31/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-31/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-32/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-32/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-33/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-33/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-34/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-34/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-35/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-35/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-35/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-35/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-36/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-36/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-37/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-37/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-38/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-38/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*�
dtypes�
�2�	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp#assignvariableop_new_layer_1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp#assignvariableop_1_new_layer_1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp%assignvariableop_2_new_layer_2_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp#assignvariableop_3_new_layer_2_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp/assignvariableop_4_batch_normalization_13_gammaIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batch_normalization_13_betaIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp5assignvariableop_6_batch_normalization_13_moving_meanIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp9assignvariableop_7_batch_normalization_13_moving_varianceIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_new_layer_3_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp#assignvariableop_9_new_layer_3_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_new_layer_4_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp$assignvariableop_11_new_layer_4_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp0assignvariableop_12_batch_normalization_12_gammaIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_batch_normalization_12_betaIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp6assignvariableop_14_batch_normalization_12_moving_meanIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp:assignvariableop_15_batch_normalization_12_moving_varianceIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp!assignvariableop_16_conv2d_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_conv2d_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp#assignvariableop_18_conv2d_1_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp!assignvariableop_19_conv2d_1_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp#assignvariableop_20_conv2d_2_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp!assignvariableop_21_conv2d_2_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp#assignvariableop_22_conv2d_3_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp!assignvariableop_23_conv2d_3_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp0assignvariableop_24_batch_normalization_11_gammaIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp/assignvariableop_25_batch_normalization_11_betaIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp6assignvariableop_26_batch_normalization_11_moving_meanIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp:assignvariableop_27_batch_normalization_11_moving_varianceIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp#assignvariableop_28_conv2d_4_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp!assignvariableop_29_conv2d_4_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp#assignvariableop_30_conv2d_5_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp!assignvariableop_31_conv2d_5_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp#assignvariableop_32_conv2d_6_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp!assignvariableop_33_conv2d_6_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp#assignvariableop_34_conv2d_7_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp!assignvariableop_35_conv2d_7_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp/assignvariableop_36_batch_normalization_1_gammaIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp.assignvariableop_37_batch_normalization_1_betaIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp5assignvariableop_38_batch_normalization_1_moving_meanIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp9assignvariableop_39_batch_normalization_1_moving_varianceIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp#assignvariableop_40_conv2d_8_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp!assignvariableop_41_conv2d_8_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp#assignvariableop_42_conv2d_9_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp!assignvariableop_43_conv2d_9_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp$assignvariableop_44_conv2d_10_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp"assignvariableop_45_conv2d_10_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp$assignvariableop_46_conv2d_11_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp"assignvariableop_47_conv2d_11_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp/assignvariableop_48_batch_normalization_2_gammaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp.assignvariableop_49_batch_normalization_2_betaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp5assignvariableop_50_batch_normalization_2_moving_meanIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp9assignvariableop_51_batch_normalization_2_moving_varianceIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp$assignvariableop_52_conv2d_12_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp"assignvariableop_53_conv2d_12_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp$assignvariableop_54_conv2d_13_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp"assignvariableop_55_conv2d_13_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp$assignvariableop_56_conv2d_14_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp"assignvariableop_57_conv2d_14_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp$assignvariableop_58_conv2d_15_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp"assignvariableop_59_conv2d_15_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp/assignvariableop_60_batch_normalization_3_gammaIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp.assignvariableop_61_batch_normalization_3_betaIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp5assignvariableop_62_batch_normalization_3_moving_meanIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp9assignvariableop_63_batch_normalization_3_moving_varianceIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp$assignvariableop_64_conv2d_16_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp"assignvariableop_65_conv2d_16_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp$assignvariableop_66_conv2d_17_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp"assignvariableop_67_conv2d_17_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp$assignvariableop_68_conv2d_18_kernelIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp"assignvariableop_69_conv2d_18_biasIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp$assignvariableop_70_conv2d_19_kernelIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp"assignvariableop_71_conv2d_19_biasIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp/assignvariableop_72_batch_normalization_4_gammaIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp.assignvariableop_73_batch_normalization_4_betaIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp5assignvariableop_74_batch_normalization_4_moving_meanIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp9assignvariableop_75_batch_normalization_4_moving_varianceIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp$assignvariableop_76_conv2d_20_kernelIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp"assignvariableop_77_conv2d_20_biasIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp$assignvariableop_78_conv2d_21_kernelIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp"assignvariableop_79_conv2d_21_biasIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp$assignvariableop_80_conv2d_22_kernelIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp"assignvariableop_81_conv2d_22_biasIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp$assignvariableop_82_conv2d_23_kernelIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp"assignvariableop_83_conv2d_23_biasIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp/assignvariableop_84_batch_normalization_5_gammaIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp.assignvariableop_85_batch_normalization_5_betaIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp5assignvariableop_86_batch_normalization_5_moving_meanIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp9assignvariableop_87_batch_normalization_5_moving_varianceIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp assignvariableop_88_dense_kernelIdentity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOpassignvariableop_89_dense_biasIdentity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp"assignvariableop_90_dense_1_kernelIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp assignvariableop_91_dense_1_biasIdentity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp"assignvariableop_92_dense_2_kernelIdentity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp assignvariableop_93_dense_2_biasIdentity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_94AssignVariableOpassignvariableop_94_iterationIdentity_94:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp!assignvariableop_95_learning_rateIdentity_95:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp,assignvariableop_96_sgd_m_new_layer_1_kernelIdentity_96:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp*assignvariableop_97_sgd_m_new_layer_1_biasIdentity_97:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp,assignvariableop_98_sgd_m_new_layer_2_kernelIdentity_98:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp*assignvariableop_99_sgd_m_new_layer_2_biasIdentity_99:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp7assignvariableop_100_sgd_m_batch_normalization_13_gammaIdentity_100:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOp6assignvariableop_101_sgd_m_batch_normalization_13_betaIdentity_101:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOp-assignvariableop_102_sgd_m_new_layer_3_kernelIdentity_102:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp+assignvariableop_103_sgd_m_new_layer_3_biasIdentity_103:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp-assignvariableop_104_sgd_m_new_layer_4_kernelIdentity_104:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp+assignvariableop_105_sgd_m_new_layer_4_biasIdentity_105:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOp7assignvariableop_106_sgd_m_batch_normalization_12_gammaIdentity_106:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOp6assignvariableop_107_sgd_m_batch_normalization_12_betaIdentity_107:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOp(assignvariableop_108_sgd_m_conv2d_kernelIdentity_108:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOp&assignvariableop_109_sgd_m_conv2d_biasIdentity_109:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_110AssignVariableOp*assignvariableop_110_sgd_m_conv2d_1_kernelIdentity_110:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_111AssignVariableOp(assignvariableop_111_sgd_m_conv2d_1_biasIdentity_111:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_112AssignVariableOp*assignvariableop_112_sgd_m_conv2d_2_kernelIdentity_112:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_113AssignVariableOp(assignvariableop_113_sgd_m_conv2d_2_biasIdentity_113:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_114AssignVariableOp*assignvariableop_114_sgd_m_conv2d_3_kernelIdentity_114:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_115AssignVariableOp(assignvariableop_115_sgd_m_conv2d_3_biasIdentity_115:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_116AssignVariableOp7assignvariableop_116_sgd_m_batch_normalization_11_gammaIdentity_116:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_117AssignVariableOp6assignvariableop_117_sgd_m_batch_normalization_11_betaIdentity_117:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_118AssignVariableOp*assignvariableop_118_sgd_m_conv2d_4_kernelIdentity_118:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_119AssignVariableOp(assignvariableop_119_sgd_m_conv2d_4_biasIdentity_119:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_120AssignVariableOp*assignvariableop_120_sgd_m_conv2d_5_kernelIdentity_120:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_121AssignVariableOp(assignvariableop_121_sgd_m_conv2d_5_biasIdentity_121:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_122AssignVariableOp*assignvariableop_122_sgd_m_conv2d_6_kernelIdentity_122:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_123AssignVariableOp(assignvariableop_123_sgd_m_conv2d_6_biasIdentity_123:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_124AssignVariableOp*assignvariableop_124_sgd_m_conv2d_7_kernelIdentity_124:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_125AssignVariableOp(assignvariableop_125_sgd_m_conv2d_7_biasIdentity_125:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_126AssignVariableOp6assignvariableop_126_sgd_m_batch_normalization_1_gammaIdentity_126:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_127AssignVariableOp5assignvariableop_127_sgd_m_batch_normalization_1_betaIdentity_127:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_128AssignVariableOp*assignvariableop_128_sgd_m_conv2d_8_kernelIdentity_128:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_129AssignVariableOp(assignvariableop_129_sgd_m_conv2d_8_biasIdentity_129:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_130AssignVariableOp*assignvariableop_130_sgd_m_conv2d_9_kernelIdentity_130:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_131AssignVariableOp(assignvariableop_131_sgd_m_conv2d_9_biasIdentity_131:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_132AssignVariableOp+assignvariableop_132_sgd_m_conv2d_10_kernelIdentity_132:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_133AssignVariableOp)assignvariableop_133_sgd_m_conv2d_10_biasIdentity_133:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_134AssignVariableOp+assignvariableop_134_sgd_m_conv2d_11_kernelIdentity_134:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_135AssignVariableOp)assignvariableop_135_sgd_m_conv2d_11_biasIdentity_135:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_136AssignVariableOp6assignvariableop_136_sgd_m_batch_normalization_2_gammaIdentity_136:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_137AssignVariableOp5assignvariableop_137_sgd_m_batch_normalization_2_betaIdentity_137:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_138AssignVariableOp+assignvariableop_138_sgd_m_conv2d_12_kernelIdentity_138:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_139AssignVariableOp)assignvariableop_139_sgd_m_conv2d_12_biasIdentity_139:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_140AssignVariableOp+assignvariableop_140_sgd_m_conv2d_13_kernelIdentity_140:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_141AssignVariableOp)assignvariableop_141_sgd_m_conv2d_13_biasIdentity_141:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_142AssignVariableOp+assignvariableop_142_sgd_m_conv2d_14_kernelIdentity_142:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_143AssignVariableOp)assignvariableop_143_sgd_m_conv2d_14_biasIdentity_143:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_144AssignVariableOp+assignvariableop_144_sgd_m_conv2d_15_kernelIdentity_144:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_145AssignVariableOp)assignvariableop_145_sgd_m_conv2d_15_biasIdentity_145:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_146AssignVariableOp6assignvariableop_146_sgd_m_batch_normalization_3_gammaIdentity_146:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_147AssignVariableOp5assignvariableop_147_sgd_m_batch_normalization_3_betaIdentity_147:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_148AssignVariableOp+assignvariableop_148_sgd_m_conv2d_16_kernelIdentity_148:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_149AssignVariableOp)assignvariableop_149_sgd_m_conv2d_16_biasIdentity_149:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_150AssignVariableOp+assignvariableop_150_sgd_m_conv2d_17_kernelIdentity_150:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_151AssignVariableOp)assignvariableop_151_sgd_m_conv2d_17_biasIdentity_151:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_152AssignVariableOp+assignvariableop_152_sgd_m_conv2d_18_kernelIdentity_152:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_153IdentityRestoreV2:tensors:153"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_153AssignVariableOp)assignvariableop_153_sgd_m_conv2d_18_biasIdentity_153:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_154IdentityRestoreV2:tensors:154"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_154AssignVariableOp+assignvariableop_154_sgd_m_conv2d_19_kernelIdentity_154:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_155IdentityRestoreV2:tensors:155"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_155AssignVariableOp)assignvariableop_155_sgd_m_conv2d_19_biasIdentity_155:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_156IdentityRestoreV2:tensors:156"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_156AssignVariableOp6assignvariableop_156_sgd_m_batch_normalization_4_gammaIdentity_156:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_157IdentityRestoreV2:tensors:157"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_157AssignVariableOp5assignvariableop_157_sgd_m_batch_normalization_4_betaIdentity_157:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_158IdentityRestoreV2:tensors:158"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_158AssignVariableOp+assignvariableop_158_sgd_m_conv2d_20_kernelIdentity_158:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_159IdentityRestoreV2:tensors:159"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_159AssignVariableOp)assignvariableop_159_sgd_m_conv2d_20_biasIdentity_159:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_160IdentityRestoreV2:tensors:160"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_160AssignVariableOp+assignvariableop_160_sgd_m_conv2d_21_kernelIdentity_160:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_161IdentityRestoreV2:tensors:161"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_161AssignVariableOp)assignvariableop_161_sgd_m_conv2d_21_biasIdentity_161:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_162IdentityRestoreV2:tensors:162"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_162AssignVariableOp+assignvariableop_162_sgd_m_conv2d_22_kernelIdentity_162:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_163IdentityRestoreV2:tensors:163"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_163AssignVariableOp)assignvariableop_163_sgd_m_conv2d_22_biasIdentity_163:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_164IdentityRestoreV2:tensors:164"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_164AssignVariableOp+assignvariableop_164_sgd_m_conv2d_23_kernelIdentity_164:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_165IdentityRestoreV2:tensors:165"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_165AssignVariableOp)assignvariableop_165_sgd_m_conv2d_23_biasIdentity_165:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_166IdentityRestoreV2:tensors:166"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_166AssignVariableOp6assignvariableop_166_sgd_m_batch_normalization_5_gammaIdentity_166:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_167IdentityRestoreV2:tensors:167"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_167AssignVariableOp5assignvariableop_167_sgd_m_batch_normalization_5_betaIdentity_167:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_168IdentityRestoreV2:tensors:168"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_168AssignVariableOp'assignvariableop_168_sgd_m_dense_kernelIdentity_168:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_169IdentityRestoreV2:tensors:169"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_169AssignVariableOp%assignvariableop_169_sgd_m_dense_biasIdentity_169:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_170IdentityRestoreV2:tensors:170"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_170AssignVariableOp)assignvariableop_170_sgd_m_dense_1_kernelIdentity_170:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_171IdentityRestoreV2:tensors:171"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_171AssignVariableOp'assignvariableop_171_sgd_m_dense_1_biasIdentity_171:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_172IdentityRestoreV2:tensors:172"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_172AssignVariableOp)assignvariableop_172_sgd_m_dense_2_kernelIdentity_172:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_173IdentityRestoreV2:tensors:173"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_173AssignVariableOp'assignvariableop_173_sgd_m_dense_2_biasIdentity_173:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_174IdentityRestoreV2:tensors:174"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_174AssignVariableOpassignvariableop_174_total_1Identity_174:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_175IdentityRestoreV2:tensors:175"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_175AssignVariableOpassignvariableop_175_count_1Identity_175:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_176IdentityRestoreV2:tensors:176"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_176AssignVariableOpassignvariableop_176_totalIdentity_176:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_177IdentityRestoreV2:tensors:177"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_177AssignVariableOpassignvariableop_177_countIdentity_177:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_178Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_163^AssignVariableOp_164^AssignVariableOp_165^AssignVariableOp_166^AssignVariableOp_167^AssignVariableOp_168^AssignVariableOp_169^AssignVariableOp_17^AssignVariableOp_170^AssignVariableOp_171^AssignVariableOp_172^AssignVariableOp_173^AssignVariableOp_174^AssignVariableOp_175^AssignVariableOp_176^AssignVariableOp_177^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_179IdentityIdentity_178:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_163^AssignVariableOp_164^AssignVariableOp_165^AssignVariableOp_166^AssignVariableOp_167^AssignVariableOp_168^AssignVariableOp_169^AssignVariableOp_17^AssignVariableOp_170^AssignVariableOp_171^AssignVariableOp_172^AssignVariableOp_173^AssignVariableOp_174^AssignVariableOp_175^AssignVariableOp_176^AssignVariableOp_177^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
_output_shapes
 "%
identity_179Identity_179:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442,
AssignVariableOp_145AssignVariableOp_1452,
AssignVariableOp_146AssignVariableOp_1462,
AssignVariableOp_147AssignVariableOp_1472,
AssignVariableOp_148AssignVariableOp_1482,
AssignVariableOp_149AssignVariableOp_1492*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_150AssignVariableOp_1502,
AssignVariableOp_151AssignVariableOp_1512,
AssignVariableOp_152AssignVariableOp_1522,
AssignVariableOp_153AssignVariableOp_1532,
AssignVariableOp_154AssignVariableOp_1542,
AssignVariableOp_155AssignVariableOp_1552,
AssignVariableOp_156AssignVariableOp_1562,
AssignVariableOp_157AssignVariableOp_1572,
AssignVariableOp_158AssignVariableOp_1582,
AssignVariableOp_159AssignVariableOp_1592*
AssignVariableOp_15AssignVariableOp_152,
AssignVariableOp_160AssignVariableOp_1602,
AssignVariableOp_161AssignVariableOp_1612,
AssignVariableOp_162AssignVariableOp_1622,
AssignVariableOp_163AssignVariableOp_1632,
AssignVariableOp_164AssignVariableOp_1642,
AssignVariableOp_165AssignVariableOp_1652,
AssignVariableOp_166AssignVariableOp_1662,
AssignVariableOp_167AssignVariableOp_1672,
AssignVariableOp_168AssignVariableOp_1682,
AssignVariableOp_169AssignVariableOp_1692*
AssignVariableOp_16AssignVariableOp_162,
AssignVariableOp_170AssignVariableOp_1702,
AssignVariableOp_171AssignVariableOp_1712,
AssignVariableOp_172AssignVariableOp_1722,
AssignVariableOp_173AssignVariableOp_1732,
AssignVariableOp_174AssignVariableOp_1742,
AssignVariableOp_175AssignVariableOp_1752,
AssignVariableOp_176AssignVariableOp_1762,
AssignVariableOp_177AssignVariableOp_1772*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_992(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:&�!

_user_specified_namecount:&�!

_user_specified_nametotal:(�#
!
_user_specified_name	count_1:(�#
!
_user_specified_name	total_1:3�.
,
_user_specified_nameSGD/m/dense_2/bias:5�0
.
_user_specified_nameSGD/m/dense_2/kernel:3�.
,
_user_specified_nameSGD/m/dense_1/bias:5�0
.
_user_specified_nameSGD/m/dense_1/kernel:1�,
*
_user_specified_nameSGD/m/dense/bias:3�.
,
_user_specified_nameSGD/m/dense/kernel:A�<
:
_user_specified_name" SGD/m/batch_normalization_5/beta:B�=
;
_user_specified_name#!SGD/m/batch_normalization_5/gamma:5�0
.
_user_specified_nameSGD/m/conv2d_23/bias:7�2
0
_user_specified_nameSGD/m/conv2d_23/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_22/bias:7�2
0
_user_specified_nameSGD/m/conv2d_22/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_21/bias:7�2
0
_user_specified_nameSGD/m/conv2d_21/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_20/bias:7�2
0
_user_specified_nameSGD/m/conv2d_20/kernel:A�<
:
_user_specified_name" SGD/m/batch_normalization_4/beta:B�=
;
_user_specified_name#!SGD/m/batch_normalization_4/gamma:5�0
.
_user_specified_nameSGD/m/conv2d_19/bias:7�2
0
_user_specified_nameSGD/m/conv2d_19/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_18/bias:7�2
0
_user_specified_nameSGD/m/conv2d_18/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_17/bias:7�2
0
_user_specified_nameSGD/m/conv2d_17/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_16/bias:7�2
0
_user_specified_nameSGD/m/conv2d_16/kernel:A�<
:
_user_specified_name" SGD/m/batch_normalization_3/beta:B�=
;
_user_specified_name#!SGD/m/batch_normalization_3/gamma:5�0
.
_user_specified_nameSGD/m/conv2d_15/bias:7�2
0
_user_specified_nameSGD/m/conv2d_15/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_14/bias:7�2
0
_user_specified_nameSGD/m/conv2d_14/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_13/bias:7�2
0
_user_specified_nameSGD/m/conv2d_13/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_12/bias:7�2
0
_user_specified_nameSGD/m/conv2d_12/kernel:A�<
:
_user_specified_name" SGD/m/batch_normalization_2/beta:B�=
;
_user_specified_name#!SGD/m/batch_normalization_2/gamma:5�0
.
_user_specified_nameSGD/m/conv2d_11/bias:7�2
0
_user_specified_nameSGD/m/conv2d_11/kernel:5�0
.
_user_specified_nameSGD/m/conv2d_10/bias:7�2
0
_user_specified_nameSGD/m/conv2d_10/kernel:4�/
-
_user_specified_nameSGD/m/conv2d_9/bias:6�1
/
_user_specified_nameSGD/m/conv2d_9/kernel:4�/
-
_user_specified_nameSGD/m/conv2d_8/bias:6�1
/
_user_specified_nameSGD/m/conv2d_8/kernel:A�<
:
_user_specified_name" SGD/m/batch_normalization_1/beta:A=
;
_user_specified_name#!SGD/m/batch_normalization_1/gamma:3~/
-
_user_specified_nameSGD/m/conv2d_7/bias:5}1
/
_user_specified_nameSGD/m/conv2d_7/kernel:3|/
-
_user_specified_nameSGD/m/conv2d_6/bias:5{1
/
_user_specified_nameSGD/m/conv2d_6/kernel:3z/
-
_user_specified_nameSGD/m/conv2d_5/bias:5y1
/
_user_specified_nameSGD/m/conv2d_5/kernel:3x/
-
_user_specified_nameSGD/m/conv2d_4/bias:5w1
/
_user_specified_nameSGD/m/conv2d_4/kernel:Av=
;
_user_specified_name#!SGD/m/batch_normalization_11/beta:Bu>
<
_user_specified_name$"SGD/m/batch_normalization_11/gamma:3t/
-
_user_specified_nameSGD/m/conv2d_3/bias:5s1
/
_user_specified_nameSGD/m/conv2d_3/kernel:3r/
-
_user_specified_nameSGD/m/conv2d_2/bias:5q1
/
_user_specified_nameSGD/m/conv2d_2/kernel:3p/
-
_user_specified_nameSGD/m/conv2d_1/bias:5o1
/
_user_specified_nameSGD/m/conv2d_1/kernel:1n-
+
_user_specified_nameSGD/m/conv2d/bias:3m/
-
_user_specified_nameSGD/m/conv2d/kernel:Al=
;
_user_specified_name#!SGD/m/batch_normalization_12/beta:Bk>
<
_user_specified_name$"SGD/m/batch_normalization_12/gamma:6j2
0
_user_specified_nameSGD/m/new_layer_4/bias:8i4
2
_user_specified_nameSGD/m/new_layer_4/kernel:6h2
0
_user_specified_nameSGD/m/new_layer_3/bias:8g4
2
_user_specified_nameSGD/m/new_layer_3/kernel:Af=
;
_user_specified_name#!SGD/m/batch_normalization_13/beta:Be>
<
_user_specified_name$"SGD/m/batch_normalization_13/gamma:6d2
0
_user_specified_nameSGD/m/new_layer_2/bias:8c4
2
_user_specified_nameSGD/m/new_layer_2/kernel:6b2
0
_user_specified_nameSGD/m/new_layer_1/bias:8a4
2
_user_specified_nameSGD/m/new_layer_1/kernel:-`)
'
_user_specified_namelearning_rate:)_%
#
_user_specified_name	iteration:,^(
&
_user_specified_namedense_2/bias:.]*
(
_user_specified_namedense_2/kernel:,\(
&
_user_specified_namedense_1/bias:.[*
(
_user_specified_namedense_1/kernel:*Z&
$
_user_specified_name
dense/bias:,Y(
&
_user_specified_namedense/kernel:EXA
?
_user_specified_name'%batch_normalization_5/moving_variance:AW=
;
_user_specified_name#!batch_normalization_5/moving_mean::V6
4
_user_specified_namebatch_normalization_5/beta:;U7
5
_user_specified_namebatch_normalization_5/gamma:.T*
(
_user_specified_nameconv2d_23/bias:0S,
*
_user_specified_nameconv2d_23/kernel:.R*
(
_user_specified_nameconv2d_22/bias:0Q,
*
_user_specified_nameconv2d_22/kernel:.P*
(
_user_specified_nameconv2d_21/bias:0O,
*
_user_specified_nameconv2d_21/kernel:.N*
(
_user_specified_nameconv2d_20/bias:0M,
*
_user_specified_nameconv2d_20/kernel:ELA
?
_user_specified_name'%batch_normalization_4/moving_variance:AK=
;
_user_specified_name#!batch_normalization_4/moving_mean::J6
4
_user_specified_namebatch_normalization_4/beta:;I7
5
_user_specified_namebatch_normalization_4/gamma:.H*
(
_user_specified_nameconv2d_19/bias:0G,
*
_user_specified_nameconv2d_19/kernel:.F*
(
_user_specified_nameconv2d_18/bias:0E,
*
_user_specified_nameconv2d_18/kernel:.D*
(
_user_specified_nameconv2d_17/bias:0C,
*
_user_specified_nameconv2d_17/kernel:.B*
(
_user_specified_nameconv2d_16/bias:0A,
*
_user_specified_nameconv2d_16/kernel:E@A
?
_user_specified_name'%batch_normalization_3/moving_variance:A?=
;
_user_specified_name#!batch_normalization_3/moving_mean::>6
4
_user_specified_namebatch_normalization_3/beta:;=7
5
_user_specified_namebatch_normalization_3/gamma:.<*
(
_user_specified_nameconv2d_15/bias:0;,
*
_user_specified_nameconv2d_15/kernel:.:*
(
_user_specified_nameconv2d_14/bias:09,
*
_user_specified_nameconv2d_14/kernel:.8*
(
_user_specified_nameconv2d_13/bias:07,
*
_user_specified_nameconv2d_13/kernel:.6*
(
_user_specified_nameconv2d_12/bias:05,
*
_user_specified_nameconv2d_12/kernel:E4A
?
_user_specified_name'%batch_normalization_2/moving_variance:A3=
;
_user_specified_name#!batch_normalization_2/moving_mean::26
4
_user_specified_namebatch_normalization_2/beta:;17
5
_user_specified_namebatch_normalization_2/gamma:.0*
(
_user_specified_nameconv2d_11/bias:0/,
*
_user_specified_nameconv2d_11/kernel:..*
(
_user_specified_nameconv2d_10/bias:0-,
*
_user_specified_nameconv2d_10/kernel:-,)
'
_user_specified_nameconv2d_9/bias:/++
)
_user_specified_nameconv2d_9/kernel:-*)
'
_user_specified_nameconv2d_8/bias:/)+
)
_user_specified_nameconv2d_8/kernel:E(A
?
_user_specified_name'%batch_normalization_1/moving_variance:A'=
;
_user_specified_name#!batch_normalization_1/moving_mean::&6
4
_user_specified_namebatch_normalization_1/beta:;%7
5
_user_specified_namebatch_normalization_1/gamma:-$)
'
_user_specified_nameconv2d_7/bias:/#+
)
_user_specified_nameconv2d_7/kernel:-")
'
_user_specified_nameconv2d_6/bias:/!+
)
_user_specified_nameconv2d_6/kernel:- )
'
_user_specified_nameconv2d_5/bias:/+
)
_user_specified_nameconv2d_5/kernel:-)
'
_user_specified_nameconv2d_4/bias:/+
)
_user_specified_nameconv2d_4/kernel:FB
@
_user_specified_name(&batch_normalization_11/moving_variance:B>
<
_user_specified_name$"batch_normalization_11/moving_mean:;7
5
_user_specified_namebatch_normalization_11/beta:<8
6
_user_specified_namebatch_normalization_11/gamma:-)
'
_user_specified_nameconv2d_3/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:FB
@
_user_specified_name(&batch_normalization_12/moving_variance:B>
<
_user_specified_name$"batch_normalization_12/moving_mean:;7
5
_user_specified_namebatch_normalization_12/beta:<8
6
_user_specified_namebatch_normalization_12/gamma:0,
*
_user_specified_namenew_layer_4/bias:2.
,
_user_specified_namenew_layer_4/kernel:0
,
*
_user_specified_namenew_layer_3/bias:2	.
,
_user_specified_namenew_layer_3/kernel:FB
@
_user_specified_name(&batch_normalization_13/moving_variance:B>
<
_user_specified_name$"batch_normalization_13/moving_mean:;7
5
_user_specified_namebatch_normalization_13/beta:<8
6
_user_specified_namebatch_normalization_13/gamma:0,
*
_user_specified_namenew_layer_2/bias:2.
,
_user_specified_namenew_layer_2/kernel:0,
*
_user_specified_namenew_layer_1/bias:2.
,
_user_specified_namenew_layer_1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
D__inference_conv2d_23_layer_call_and_return_conditional_losses_30554

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
D__inference_conv2d_10_layer_call_and_return_conditional_losses_27690

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
`
D__inference_rescaling_layer_call_and_return_conditional_losses_27416

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *�� <M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ��_
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29382
gradient"
variable:  *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:  : *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:  
"
_user_specified_name
gradient
�
K
/__inference_max_pooling2d_3_layer_call_fn_30317

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_27257�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29137
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
)__inference_conv2d_16_layer_call_fn_30331

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_27806w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������   <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30327:%!

_user_specified_name30325:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_27949

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:���������� Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:���������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
B__inference_dense_2_layer_call_and_return_conditional_losses_27990

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_27329

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_30464

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29162
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
&__inference_conv2d_layer_call_fn_29723

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_27510y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29719:%!

_user_specified_name29717:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�D
�
#__inference_signature_wrapper_29107
rescaling_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:$

unknown_21:

unknown_22:

unknown_23:

unknown_24:

unknown_25:

unknown_26:$

unknown_27:

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:

unknown_35:

unknown_36:

unknown_37:

unknown_38:$

unknown_39:

unknown_40:$

unknown_41:

unknown_42:$

unknown_43:

unknown_44:$

unknown_45:

unknown_46:

unknown_47:

unknown_48:

unknown_49:

unknown_50:$

unknown_51:

unknown_52:$

unknown_53:

unknown_54:$

unknown_55:

unknown_56:$

unknown_57:

unknown_58:

unknown_59:

unknown_60:

unknown_61:

unknown_62:$

unknown_63: 

unknown_64: $

unknown_65:  

unknown_66: $

unknown_67:  

unknown_68: $

unknown_69:  

unknown_70: 

unknown_71: 

unknown_72: 

unknown_73: 

unknown_74: $

unknown_75: @

unknown_76:@$

unknown_77:@@

unknown_78:@$

unknown_79:@@

unknown_80:@$

unknown_81:@@

unknown_82:@

unknown_83:@

unknown_84:@

unknown_85:@

unknown_86:@

unknown_87:
� �

unknown_88:	�

unknown_89:
��

unknown_90:	�

unknown_91:	�


unknown_92:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrescaling_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76
unknown_77
unknown_78
unknown_79
unknown_80
unknown_81
unknown_82
unknown_83
unknown_84
unknown_85
unknown_86
unknown_87
unknown_88
unknown_89
unknown_90
unknown_91
unknown_92*j
Tinc
a2_*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*�
_read_only_resource_inputsb
`^	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_26850o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%^!

_user_specified_name29103:%]!

_user_specified_name29101:%\!

_user_specified_name29099:%[!

_user_specified_name29097:%Z!

_user_specified_name29095:%Y!

_user_specified_name29093:%X!

_user_specified_name29091:%W!

_user_specified_name29089:%V!

_user_specified_name29087:%U!

_user_specified_name29085:%T!

_user_specified_name29083:%S!

_user_specified_name29081:%R!

_user_specified_name29079:%Q!

_user_specified_name29077:%P!

_user_specified_name29075:%O!

_user_specified_name29073:%N!

_user_specified_name29071:%M!

_user_specified_name29069:%L!

_user_specified_name29067:%K!

_user_specified_name29065:%J!

_user_specified_name29063:%I!

_user_specified_name29061:%H!

_user_specified_name29059:%G!

_user_specified_name29057:%F!

_user_specified_name29055:%E!

_user_specified_name29053:%D!

_user_specified_name29051:%C!

_user_specified_name29049:%B!

_user_specified_name29047:%A!

_user_specified_name29045:%@!

_user_specified_name29043:%?!

_user_specified_name29041:%>!

_user_specified_name29039:%=!

_user_specified_name29037:%<!

_user_specified_name29035:%;!

_user_specified_name29033:%:!

_user_specified_name29031:%9!

_user_specified_name29029:%8!

_user_specified_name29027:%7!

_user_specified_name29025:%6!

_user_specified_name29023:%5!

_user_specified_name29021:%4!

_user_specified_name29019:%3!

_user_specified_name29017:%2!

_user_specified_name29015:%1!

_user_specified_name29013:%0!

_user_specified_name29011:%/!

_user_specified_name29009:%.!

_user_specified_name29007:%-!

_user_specified_name29005:%,!

_user_specified_name29003:%+!

_user_specified_name29001:%*!

_user_specified_name28999:%)!

_user_specified_name28997:%(!

_user_specified_name28995:%'!

_user_specified_name28993:%&!

_user_specified_name28991:%%!

_user_specified_name28989:%$!

_user_specified_name28987:%#!

_user_specified_name28985:%"!

_user_specified_name28983:%!!

_user_specified_name28981:% !

_user_specified_name28979:%!

_user_specified_name28977:%!

_user_specified_name28975:%!

_user_specified_name28973:%!

_user_specified_name28971:%!

_user_specified_name28969:%!

_user_specified_name28967:%!

_user_specified_name28965:%!

_user_specified_name28963:%!

_user_specified_name28961:%!

_user_specified_name28959:%!

_user_specified_name28957:%!

_user_specified_name28955:%!

_user_specified_name28953:%!

_user_specified_name28951:%!

_user_specified_name28949:%!

_user_specified_name28947:%!

_user_specified_name28945:%!

_user_specified_name28943:%!

_user_specified_name28941:%!

_user_specified_name28939:%!

_user_specified_name28937:%
!

_user_specified_name28935:%	!

_user_specified_name28933:%!

_user_specified_name28931:%!

_user_specified_name28929:%!

_user_specified_name28927:%!

_user_specified_name28925:%!

_user_specified_name28923:%!

_user_specified_name28921:%!

_user_specified_name28919:%!

_user_specified_name28917:b ^
1
_output_shapes
:�����������
)
_user_specified_namerescaling_input
�
�
)__inference_conv2d_18_layer_call_fn_30371

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_27838w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������   <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30367:%!

_user_specified_name30365:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
D__inference_conv2d_21_layer_call_and_return_conditional_losses_30514

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29297
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_27764

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29142
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_29412
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
V
"__inference__update_step_xla_29282
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_29886

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_13_layer_call_and_return_conditional_losses_30210

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�

�
5__inference_batch_normalization_5_layer_call_fn_30567

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_27352�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30563:%!

_user_specified_name30561:%!

_user_specified_name30559:%!

_user_specified_name30557:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
K
"__inference__update_step_xla_29477
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:�
"
_user_specified_name
gradient
�
�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_27208

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_19_layer_call_and_return_conditional_losses_30402

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_30322

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29367
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_27352

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�(
E__inference_sequential_layer_call_and_return_conditional_losses_28236
rescaling_input+
new_layer_1_28001:
new_layer_1_28003:+
new_layer_2_28006:
new_layer_2_28008:*
batch_normalization_13_28011:*
batch_normalization_13_28013:*
batch_normalization_13_28015:*
batch_normalization_13_28017:+
new_layer_3_28020:
new_layer_3_28022:+
new_layer_4_28025:
new_layer_4_28027:*
batch_normalization_12_28030:*
batch_normalization_12_28032:*
batch_normalization_12_28034:*
batch_normalization_12_28036:&
conv2d_28039:
conv2d_28041:(
conv2d_1_28044:
conv2d_1_28046:(
conv2d_2_28049:
conv2d_2_28051:(
conv2d_3_28054:
conv2d_3_28056:*
batch_normalization_11_28059:*
batch_normalization_11_28061:*
batch_normalization_11_28063:*
batch_normalization_11_28065:(
conv2d_4_28069:
conv2d_4_28071:(
conv2d_5_28074:
conv2d_5_28076:(
conv2d_6_28079:
conv2d_6_28081:(
conv2d_7_28084:
conv2d_7_28086:)
batch_normalization_1_28089:)
batch_normalization_1_28091:)
batch_normalization_1_28093:)
batch_normalization_1_28095:(
conv2d_8_28099:
conv2d_8_28101:(
conv2d_9_28104:
conv2d_9_28106:)
conv2d_10_28109:
conv2d_10_28111:)
conv2d_11_28114:
conv2d_11_28116:)
batch_normalization_2_28119:)
batch_normalization_2_28121:)
batch_normalization_2_28123:)
batch_normalization_2_28125:)
conv2d_12_28129:
conv2d_12_28131:)
conv2d_13_28134:
conv2d_13_28136:)
conv2d_14_28139:
conv2d_14_28141:)
conv2d_15_28144:
conv2d_15_28146:)
batch_normalization_3_28149:)
batch_normalization_3_28151:)
batch_normalization_3_28153:)
batch_normalization_3_28155:)
conv2d_16_28159: 
conv2d_16_28161: )
conv2d_17_28164:  
conv2d_17_28166: )
conv2d_18_28169:  
conv2d_18_28171: )
conv2d_19_28174:  
conv2d_19_28176: )
batch_normalization_4_28179: )
batch_normalization_4_28181: )
batch_normalization_4_28183: )
batch_normalization_4_28185: )
conv2d_20_28189: @
conv2d_20_28191:@)
conv2d_21_28194:@@
conv2d_21_28196:@)
conv2d_22_28199:@@
conv2d_22_28201:@)
conv2d_23_28204:@@
conv2d_23_28206:@)
batch_normalization_5_28209:@)
batch_normalization_5_28211:@)
batch_normalization_5_28213:@)
batch_normalization_5_28215:@
dense_28220:
� �
dense_28222:	�!
dense_1_28225:
��
dense_1_28227:	� 
dense_2_28230:	�

dense_2_28232:

identity��-batch_normalization_1/StatefulPartitionedCall�.batch_normalization_11/StatefulPartitionedCall�.batch_normalization_12/StatefulPartitionedCall�.batch_normalization_13/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�-batch_normalization_5/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall�!conv2d_12/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�!conv2d_18/StatefulPartitionedCall�!conv2d_19/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�!conv2d_20/StatefulPartitionedCall�!conv2d_21/StatefulPartitionedCall�!conv2d_22/StatefulPartitionedCall�!conv2d_23/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�#new_layer_1/StatefulPartitionedCall�#new_layer_2/StatefulPartitionedCall�#new_layer_3/StatefulPartitionedCall�#new_layer_4/StatefulPartitionedCall�
rescaling/PartitionedCallPartitionedCallrescaling_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_27416�
#new_layer_1/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0new_layer_1_28001new_layer_1_28003*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_new_layer_1_layer_call_and_return_conditional_losses_27428�
#new_layer_2/StatefulPartitionedCallStatefulPartitionedCall,new_layer_1/StatefulPartitionedCall:output:0new_layer_2_28006new_layer_2_28008*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_new_layer_2_layer_call_and_return_conditional_losses_27444�
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall,new_layer_2/StatefulPartitionedCall:output:0batch_normalization_13_28011batch_normalization_13_28013batch_normalization_13_28015batch_normalization_13_28017*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_26886�
#new_layer_3/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0new_layer_3_28020new_layer_3_28022*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_new_layer_3_layer_call_and_return_conditional_losses_27469�
#new_layer_4/StatefulPartitionedCallStatefulPartitionedCall,new_layer_3/StatefulPartitionedCall:output:0new_layer_4_28025new_layer_4_28027*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_new_layer_4_layer_call_and_return_conditional_losses_27485�
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall,new_layer_4/StatefulPartitionedCall:output:0batch_normalization_12_28030batch_normalization_12_28032batch_normalization_12_28034batch_normalization_12_28036*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_26948�
conv2d/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0conv2d_28039conv2d_28041*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_27510�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_28044conv2d_1_28046*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_27526�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_28049conv2d_2_28051*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_27542�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_28054conv2d_3_28056*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_27558�
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_11_28059batch_normalization_11_28061batch_normalization_11_28063batch_normalization_11_28065*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_27010�
max_pooling2d/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_27041�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_4_28069conv2d_4_28071*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_27584�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_28074conv2d_5_28076*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_27600�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_28079conv2d_6_28081*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_27616�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_28084conv2d_7_28086*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_27632�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_1_28089batch_normalization_1_28091batch_normalization_1_28093batch_normalization_1_28095*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_27082�
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_27113�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_8_28099conv2d_8_28101*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_27658�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0conv2d_9_28104conv2d_9_28106*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_27674�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_28109conv2d_10_28111*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_27690�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_28114conv2d_11_28116*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_27706�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_2_28119batch_normalization_2_28121batch_normalization_2_28123batch_normalization_2_28125*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_27154�
max_pooling2d_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_27185�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_12_28129conv2d_12_28131*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_27732�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0conv2d_13_28134conv2d_13_28136*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_27748�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0conv2d_14_28139conv2d_14_28141*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_27764�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0conv2d_15_28144conv2d_15_28146*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_27780�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0batch_normalization_3_28149batch_normalization_3_28151batch_normalization_3_28153batch_normalization_3_28155*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_27226�
max_pooling2d_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_27257�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_16_28159conv2d_16_28161*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_27806�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0conv2d_17_28164conv2d_17_28166*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_27822�
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0conv2d_18_28169conv2d_18_28171*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_27838�
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_28174conv2d_19_28176*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_27854�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_4_28179batch_normalization_4_28181batch_normalization_4_28183batch_normalization_4_28185*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_27298�
max_pooling2d_4/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_27329�
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_20_28189conv2d_20_28191*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_27880�
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0conv2d_21_28194conv2d_21_28196*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_27896�
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0conv2d_22_28199conv2d_22_28201*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_27912�
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0conv2d_23_28204conv2d_23_28206*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_27928�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0batch_normalization_5_28209batch_normalization_5_28211batch_normalization_5_28213batch_normalization_5_28215*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_27370�
max_pooling2d_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_27401�
flatten/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_27949�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_28220dense_28222*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27960�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_28225dense_1_28227*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_27975�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_28230dense_2_28232*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_27990w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall$^new_layer_1/StatefulPartitionedCall$^new_layer_2/StatefulPartitionedCall$^new_layer_3/StatefulPartitionedCall$^new_layer_4/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2J
#new_layer_1/StatefulPartitionedCall#new_layer_1/StatefulPartitionedCall2J
#new_layer_2/StatefulPartitionedCall#new_layer_2/StatefulPartitionedCall2J
#new_layer_3/StatefulPartitionedCall#new_layer_3/StatefulPartitionedCall2J
#new_layer_4/StatefulPartitionedCall#new_layer_4/StatefulPartitionedCall:%^!

_user_specified_name28232:%]!

_user_specified_name28230:%\!

_user_specified_name28227:%[!

_user_specified_name28225:%Z!

_user_specified_name28222:%Y!

_user_specified_name28220:%X!

_user_specified_name28215:%W!

_user_specified_name28213:%V!

_user_specified_name28211:%U!

_user_specified_name28209:%T!

_user_specified_name28206:%S!

_user_specified_name28204:%R!

_user_specified_name28201:%Q!

_user_specified_name28199:%P!

_user_specified_name28196:%O!

_user_specified_name28194:%N!

_user_specified_name28191:%M!

_user_specified_name28189:%L!

_user_specified_name28185:%K!

_user_specified_name28183:%J!

_user_specified_name28181:%I!

_user_specified_name28179:%H!

_user_specified_name28176:%G!

_user_specified_name28174:%F!

_user_specified_name28171:%E!

_user_specified_name28169:%D!

_user_specified_name28166:%C!

_user_specified_name28164:%B!

_user_specified_name28161:%A!

_user_specified_name28159:%@!

_user_specified_name28155:%?!

_user_specified_name28153:%>!

_user_specified_name28151:%=!

_user_specified_name28149:%<!

_user_specified_name28146:%;!

_user_specified_name28144:%:!

_user_specified_name28141:%9!

_user_specified_name28139:%8!

_user_specified_name28136:%7!

_user_specified_name28134:%6!

_user_specified_name28131:%5!

_user_specified_name28129:%4!

_user_specified_name28125:%3!

_user_specified_name28123:%2!

_user_specified_name28121:%1!

_user_specified_name28119:%0!

_user_specified_name28116:%/!

_user_specified_name28114:%.!

_user_specified_name28111:%-!

_user_specified_name28109:%,!

_user_specified_name28106:%+!

_user_specified_name28104:%*!

_user_specified_name28101:%)!

_user_specified_name28099:%(!

_user_specified_name28095:%'!

_user_specified_name28093:%&!

_user_specified_name28091:%%!

_user_specified_name28089:%$!

_user_specified_name28086:%#!

_user_specified_name28084:%"!

_user_specified_name28081:%!!

_user_specified_name28079:% !

_user_specified_name28076:%!

_user_specified_name28074:%!

_user_specified_name28071:%!

_user_specified_name28069:%!

_user_specified_name28065:%!

_user_specified_name28063:%!

_user_specified_name28061:%!

_user_specified_name28059:%!

_user_specified_name28056:%!

_user_specified_name28054:%!

_user_specified_name28051:%!

_user_specified_name28049:%!

_user_specified_name28046:%!

_user_specified_name28044:%!

_user_specified_name28041:%!

_user_specified_name28039:%!

_user_specified_name28036:%!

_user_specified_name28034:%!

_user_specified_name28032:%!

_user_specified_name28030:%!

_user_specified_name28027:%!

_user_specified_name28025:%
!

_user_specified_name28022:%	!

_user_specified_name28020:%!

_user_specified_name28017:%!

_user_specified_name28015:%!

_user_specified_name28013:%!

_user_specified_name28011:%!

_user_specified_name28008:%!

_user_specified_name28006:%!

_user_specified_name28003:%!

_user_specified_name28001:b ^
1
_output_shapes
:�����������
)
_user_specified_namerescaling_input
�
�
F__inference_new_layer_1_layer_call_and_return_conditional_losses_27428

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29292
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
�
C__inference_conv2d_9_layer_call_and_return_conditional_losses_30058

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29202
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
�
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_27298

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
D__inference_conv2d_16_layer_call_and_return_conditional_losses_30342

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_26948

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29312
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
(__inference_conv2d_6_layer_call_fn_29915

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_27616y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29911:%!

_user_specified_name29909:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29442
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient
�
�
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_30616

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_26992

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
C
'__inference_flatten_layer_call_fn_30631

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
:���������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_27949a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:���������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_30294

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_13_layer_call_and_return_conditional_losses_27748

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29402
gradient"
variable:  *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:  : *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:  
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_29132
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_29774

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
5__inference_batch_normalization_4_layer_call_fn_30428

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_27298�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30424:%!

_user_specified_name30422:%!

_user_specified_name30420:%!

_user_specified_name30418:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29432
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient
�
�
D__inference_conv2d_18_layer_call_and_return_conditional_losses_27838

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_26886

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29342
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_29237
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�E
�
*__inference_sequential_layer_call_fn_28622
rescaling_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:$

unknown_15:

unknown_16:$

unknown_17:

unknown_18:$

unknown_19:

unknown_20:$

unknown_21:

unknown_22:

unknown_23:

unknown_24:

unknown_25:

unknown_26:$

unknown_27:

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:

unknown_35:

unknown_36:

unknown_37:

unknown_38:$

unknown_39:

unknown_40:$

unknown_41:

unknown_42:$

unknown_43:

unknown_44:$

unknown_45:

unknown_46:

unknown_47:

unknown_48:

unknown_49:

unknown_50:$

unknown_51:

unknown_52:$

unknown_53:

unknown_54:$

unknown_55:

unknown_56:$

unknown_57:

unknown_58:

unknown_59:

unknown_60:

unknown_61:

unknown_62:$

unknown_63: 

unknown_64: $

unknown_65:  

unknown_66: $

unknown_67:  

unknown_68: $

unknown_69:  

unknown_70: 

unknown_71: 

unknown_72: 

unknown_73: 

unknown_74: $

unknown_75: @

unknown_76:@$

unknown_77:@@

unknown_78:@$

unknown_79:@@

unknown_80:@$

unknown_81:@@

unknown_82:@

unknown_83:@

unknown_84:@

unknown_85:@

unknown_86:@

unknown_87:
� �

unknown_88:	�

unknown_89:
��

unknown_90:	�

unknown_91:	�


unknown_92:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrescaling_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76
unknown_77
unknown_78
unknown_79
unknown_80
unknown_81
unknown_82
unknown_83
unknown_84
unknown_85
unknown_86
unknown_87
unknown_88
unknown_89
unknown_90
unknown_91
unknown_92*j
Tinc
a2_*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*�
_read_only_resource_inputsb
`^	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_28236o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%^!

_user_specified_name28618:%]!

_user_specified_name28616:%\!

_user_specified_name28614:%[!

_user_specified_name28612:%Z!

_user_specified_name28610:%Y!

_user_specified_name28608:%X!

_user_specified_name28606:%W!

_user_specified_name28604:%V!

_user_specified_name28602:%U!

_user_specified_name28600:%T!

_user_specified_name28598:%S!

_user_specified_name28596:%R!

_user_specified_name28594:%Q!

_user_specified_name28592:%P!

_user_specified_name28590:%O!

_user_specified_name28588:%N!

_user_specified_name28586:%M!

_user_specified_name28584:%L!

_user_specified_name28582:%K!

_user_specified_name28580:%J!

_user_specified_name28578:%I!

_user_specified_name28576:%H!

_user_specified_name28574:%G!

_user_specified_name28572:%F!

_user_specified_name28570:%E!

_user_specified_name28568:%D!

_user_specified_name28566:%C!

_user_specified_name28564:%B!

_user_specified_name28562:%A!

_user_specified_name28560:%@!

_user_specified_name28558:%?!

_user_specified_name28556:%>!

_user_specified_name28554:%=!

_user_specified_name28552:%<!

_user_specified_name28550:%;!

_user_specified_name28548:%:!

_user_specified_name28546:%9!

_user_specified_name28544:%8!

_user_specified_name28542:%7!

_user_specified_name28540:%6!

_user_specified_name28538:%5!

_user_specified_name28536:%4!

_user_specified_name28534:%3!

_user_specified_name28532:%2!

_user_specified_name28530:%1!

_user_specified_name28528:%0!

_user_specified_name28526:%/!

_user_specified_name28524:%.!

_user_specified_name28522:%-!

_user_specified_name28520:%,!

_user_specified_name28518:%+!

_user_specified_name28516:%*!

_user_specified_name28514:%)!

_user_specified_name28512:%(!

_user_specified_name28510:%'!

_user_specified_name28508:%&!

_user_specified_name28506:%%!

_user_specified_name28504:%$!

_user_specified_name28502:%#!

_user_specified_name28500:%"!

_user_specified_name28498:%!!

_user_specified_name28496:% !

_user_specified_name28494:%!

_user_specified_name28492:%!

_user_specified_name28490:%!

_user_specified_name28488:%!

_user_specified_name28486:%!

_user_specified_name28484:%!

_user_specified_name28482:%!

_user_specified_name28480:%!

_user_specified_name28478:%!

_user_specified_name28476:%!

_user_specified_name28474:%!

_user_specified_name28472:%!

_user_specified_name28470:%!

_user_specified_name28468:%!

_user_specified_name28466:%!

_user_specified_name28464:%!

_user_specified_name28462:%!

_user_specified_name28460:%!

_user_specified_name28458:%!

_user_specified_name28456:%!

_user_specified_name28454:%!

_user_specified_name28452:%
!

_user_specified_name28450:%	!

_user_specified_name28448:%!

_user_specified_name28446:%!

_user_specified_name28444:%!

_user_specified_name28442:%!

_user_specified_name28440:%!

_user_specified_name28438:%!

_user_specified_name28436:%!

_user_specified_name28434:%!

_user_specified_name28432:b ^
1
_output_shapes
:�����������
)
_user_specified_namerescaling_input
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_29754

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_5_layer_call_fn_30621

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_27401�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_27510

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_27136

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_26930

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29427
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_29387
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_29462
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
�
(__inference_conv2d_3_layer_call_fn_29783

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_27558y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29779:%!

_user_specified_name29777:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
F__inference_new_layer_1_layer_call_and_return_conditional_losses_29530

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_29397
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
�
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_26868

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_27064

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_18_layer_call_and_return_conditional_losses_30382

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������   S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
��
�]
 __inference__wrapped_model_26850
rescaling_inputO
5sequential_new_layer_1_conv2d_readvariableop_resource:D
6sequential_new_layer_1_biasadd_readvariableop_resource:O
5sequential_new_layer_2_conv2d_readvariableop_resource:D
6sequential_new_layer_2_biasadd_readvariableop_resource:G
9sequential_batch_normalization_13_readvariableop_resource:I
;sequential_batch_normalization_13_readvariableop_1_resource:X
Jsequential_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:Z
Lsequential_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:O
5sequential_new_layer_3_conv2d_readvariableop_resource:D
6sequential_new_layer_3_biasadd_readvariableop_resource:O
5sequential_new_layer_4_conv2d_readvariableop_resource:D
6sequential_new_layer_4_biasadd_readvariableop_resource:G
9sequential_batch_normalization_12_readvariableop_resource:I
;sequential_batch_normalization_12_readvariableop_1_resource:X
Jsequential_batch_normalization_12_fusedbatchnormv3_readvariableop_resource:Z
Lsequential_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:J
0sequential_conv2d_conv2d_readvariableop_resource:?
1sequential_conv2d_biasadd_readvariableop_resource:L
2sequential_conv2d_1_conv2d_readvariableop_resource:A
3sequential_conv2d_1_biasadd_readvariableop_resource:L
2sequential_conv2d_2_conv2d_readvariableop_resource:A
3sequential_conv2d_2_biasadd_readvariableop_resource:L
2sequential_conv2d_3_conv2d_readvariableop_resource:A
3sequential_conv2d_3_biasadd_readvariableop_resource:G
9sequential_batch_normalization_11_readvariableop_resource:I
;sequential_batch_normalization_11_readvariableop_1_resource:X
Jsequential_batch_normalization_11_fusedbatchnormv3_readvariableop_resource:Z
Lsequential_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:L
2sequential_conv2d_4_conv2d_readvariableop_resource:A
3sequential_conv2d_4_biasadd_readvariableop_resource:L
2sequential_conv2d_5_conv2d_readvariableop_resource:A
3sequential_conv2d_5_biasadd_readvariableop_resource:L
2sequential_conv2d_6_conv2d_readvariableop_resource:A
3sequential_conv2d_6_biasadd_readvariableop_resource:L
2sequential_conv2d_7_conv2d_readvariableop_resource:A
3sequential_conv2d_7_biasadd_readvariableop_resource:F
8sequential_batch_normalization_1_readvariableop_resource:H
:sequential_batch_normalization_1_readvariableop_1_resource:W
Isequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:Y
Ksequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:L
2sequential_conv2d_8_conv2d_readvariableop_resource:A
3sequential_conv2d_8_biasadd_readvariableop_resource:L
2sequential_conv2d_9_conv2d_readvariableop_resource:A
3sequential_conv2d_9_biasadd_readvariableop_resource:M
3sequential_conv2d_10_conv2d_readvariableop_resource:B
4sequential_conv2d_10_biasadd_readvariableop_resource:M
3sequential_conv2d_11_conv2d_readvariableop_resource:B
4sequential_conv2d_11_biasadd_readvariableop_resource:F
8sequential_batch_normalization_2_readvariableop_resource:H
:sequential_batch_normalization_2_readvariableop_1_resource:W
Isequential_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:Y
Ksequential_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:M
3sequential_conv2d_12_conv2d_readvariableop_resource:B
4sequential_conv2d_12_biasadd_readvariableop_resource:M
3sequential_conv2d_13_conv2d_readvariableop_resource:B
4sequential_conv2d_13_biasadd_readvariableop_resource:M
3sequential_conv2d_14_conv2d_readvariableop_resource:B
4sequential_conv2d_14_biasadd_readvariableop_resource:M
3sequential_conv2d_15_conv2d_readvariableop_resource:B
4sequential_conv2d_15_biasadd_readvariableop_resource:F
8sequential_batch_normalization_3_readvariableop_resource:H
:sequential_batch_normalization_3_readvariableop_1_resource:W
Isequential_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:Y
Ksequential_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:M
3sequential_conv2d_16_conv2d_readvariableop_resource: B
4sequential_conv2d_16_biasadd_readvariableop_resource: M
3sequential_conv2d_17_conv2d_readvariableop_resource:  B
4sequential_conv2d_17_biasadd_readvariableop_resource: M
3sequential_conv2d_18_conv2d_readvariableop_resource:  B
4sequential_conv2d_18_biasadd_readvariableop_resource: M
3sequential_conv2d_19_conv2d_readvariableop_resource:  B
4sequential_conv2d_19_biasadd_readvariableop_resource: F
8sequential_batch_normalization_4_readvariableop_resource: H
:sequential_batch_normalization_4_readvariableop_1_resource: W
Isequential_batch_normalization_4_fusedbatchnormv3_readvariableop_resource: Y
Ksequential_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource: M
3sequential_conv2d_20_conv2d_readvariableop_resource: @B
4sequential_conv2d_20_biasadd_readvariableop_resource:@M
3sequential_conv2d_21_conv2d_readvariableop_resource:@@B
4sequential_conv2d_21_biasadd_readvariableop_resource:@M
3sequential_conv2d_22_conv2d_readvariableop_resource:@@B
4sequential_conv2d_22_biasadd_readvariableop_resource:@M
3sequential_conv2d_23_conv2d_readvariableop_resource:@@B
4sequential_conv2d_23_biasadd_readvariableop_resource:@F
8sequential_batch_normalization_5_readvariableop_resource:@H
:sequential_batch_normalization_5_readvariableop_1_resource:@W
Isequential_batch_normalization_5_fusedbatchnormv3_readvariableop_resource:@Y
Ksequential_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:@C
/sequential_dense_matmul_readvariableop_resource:
� �?
0sequential_dense_biasadd_readvariableop_resource:	�E
1sequential_dense_1_matmul_readvariableop_resource:
��A
2sequential_dense_1_biasadd_readvariableop_resource:	�D
1sequential_dense_2_matmul_readvariableop_resource:	�
@
2sequential_dense_2_biasadd_readvariableop_resource:

identity��@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�/sequential/batch_normalization_1/ReadVariableOp�1sequential/batch_normalization_1/ReadVariableOp_1�Asequential/batch_normalization_11/FusedBatchNormV3/ReadVariableOp�Csequential/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1�0sequential/batch_normalization_11/ReadVariableOp�2sequential/batch_normalization_11/ReadVariableOp_1�Asequential/batch_normalization_12/FusedBatchNormV3/ReadVariableOp�Csequential/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1�0sequential/batch_normalization_12/ReadVariableOp�2sequential/batch_normalization_12/ReadVariableOp_1�Asequential/batch_normalization_13/FusedBatchNormV3/ReadVariableOp�Csequential/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1�0sequential/batch_normalization_13/ReadVariableOp�2sequential/batch_normalization_13/ReadVariableOp_1�@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp�Bsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�/sequential/batch_normalization_2/ReadVariableOp�1sequential/batch_normalization_2/ReadVariableOp_1�@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp�Bsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1�/sequential/batch_normalization_3/ReadVariableOp�1sequential/batch_normalization_3/ReadVariableOp_1�@sequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp�Bsequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�/sequential/batch_normalization_4/ReadVariableOp�1sequential/batch_normalization_4/ReadVariableOp_1�@sequential/batch_normalization_5/FusedBatchNormV3/ReadVariableOp�Bsequential/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1�/sequential/batch_normalization_5/ReadVariableOp�1sequential/batch_normalization_5/ReadVariableOp_1�(sequential/conv2d/BiasAdd/ReadVariableOp�'sequential/conv2d/Conv2D/ReadVariableOp�*sequential/conv2d_1/BiasAdd/ReadVariableOp�)sequential/conv2d_1/Conv2D/ReadVariableOp�+sequential/conv2d_10/BiasAdd/ReadVariableOp�*sequential/conv2d_10/Conv2D/ReadVariableOp�+sequential/conv2d_11/BiasAdd/ReadVariableOp�*sequential/conv2d_11/Conv2D/ReadVariableOp�+sequential/conv2d_12/BiasAdd/ReadVariableOp�*sequential/conv2d_12/Conv2D/ReadVariableOp�+sequential/conv2d_13/BiasAdd/ReadVariableOp�*sequential/conv2d_13/Conv2D/ReadVariableOp�+sequential/conv2d_14/BiasAdd/ReadVariableOp�*sequential/conv2d_14/Conv2D/ReadVariableOp�+sequential/conv2d_15/BiasAdd/ReadVariableOp�*sequential/conv2d_15/Conv2D/ReadVariableOp�+sequential/conv2d_16/BiasAdd/ReadVariableOp�*sequential/conv2d_16/Conv2D/ReadVariableOp�+sequential/conv2d_17/BiasAdd/ReadVariableOp�*sequential/conv2d_17/Conv2D/ReadVariableOp�+sequential/conv2d_18/BiasAdd/ReadVariableOp�*sequential/conv2d_18/Conv2D/ReadVariableOp�+sequential/conv2d_19/BiasAdd/ReadVariableOp�*sequential/conv2d_19/Conv2D/ReadVariableOp�*sequential/conv2d_2/BiasAdd/ReadVariableOp�)sequential/conv2d_2/Conv2D/ReadVariableOp�+sequential/conv2d_20/BiasAdd/ReadVariableOp�*sequential/conv2d_20/Conv2D/ReadVariableOp�+sequential/conv2d_21/BiasAdd/ReadVariableOp�*sequential/conv2d_21/Conv2D/ReadVariableOp�+sequential/conv2d_22/BiasAdd/ReadVariableOp�*sequential/conv2d_22/Conv2D/ReadVariableOp�+sequential/conv2d_23/BiasAdd/ReadVariableOp�*sequential/conv2d_23/Conv2D/ReadVariableOp�*sequential/conv2d_3/BiasAdd/ReadVariableOp�)sequential/conv2d_3/Conv2D/ReadVariableOp�*sequential/conv2d_4/BiasAdd/ReadVariableOp�)sequential/conv2d_4/Conv2D/ReadVariableOp�*sequential/conv2d_5/BiasAdd/ReadVariableOp�)sequential/conv2d_5/Conv2D/ReadVariableOp�*sequential/conv2d_6/BiasAdd/ReadVariableOp�)sequential/conv2d_6/Conv2D/ReadVariableOp�*sequential/conv2d_7/BiasAdd/ReadVariableOp�)sequential/conv2d_7/Conv2D/ReadVariableOp�*sequential/conv2d_8/BiasAdd/ReadVariableOp�)sequential/conv2d_8/Conv2D/ReadVariableOp�*sequential/conv2d_9/BiasAdd/ReadVariableOp�)sequential/conv2d_9/Conv2D/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�(sequential/dense_1/MatMul/ReadVariableOp�)sequential/dense_2/BiasAdd/ReadVariableOp�(sequential/dense_2/MatMul/ReadVariableOp�-sequential/new_layer_1/BiasAdd/ReadVariableOp�,sequential/new_layer_1/Conv2D/ReadVariableOp�-sequential/new_layer_2/BiasAdd/ReadVariableOp�,sequential/new_layer_2/Conv2D/ReadVariableOp�-sequential/new_layer_3/BiasAdd/ReadVariableOp�,sequential/new_layer_3/Conv2D/ReadVariableOp�-sequential/new_layer_4/BiasAdd/ReadVariableOp�,sequential/new_layer_4/Conv2D/ReadVariableOp`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *�� <b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ���
sequential/rescaling/mulMulrescaling_input$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:������������
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
,sequential/new_layer_1/Conv2D/ReadVariableOpReadVariableOp5sequential_new_layer_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/new_layer_1/Conv2DConv2Dsequential/rescaling/add:z:04sequential/new_layer_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
-sequential/new_layer_1/BiasAdd/ReadVariableOpReadVariableOp6sequential_new_layer_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/new_layer_1/BiasAddBiasAdd&sequential/new_layer_1/Conv2D:output:05sequential/new_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/new_layer_1/ReluRelu'sequential/new_layer_1/BiasAdd:output:0*
T0*1
_output_shapes
:������������
,sequential/new_layer_2/Conv2D/ReadVariableOpReadVariableOp5sequential_new_layer_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/new_layer_2/Conv2DConv2D)sequential/new_layer_1/Relu:activations:04sequential/new_layer_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
-sequential/new_layer_2/BiasAdd/ReadVariableOpReadVariableOp6sequential_new_layer_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/new_layer_2/BiasAddBiasAdd&sequential/new_layer_2/Conv2D:output:05sequential/new_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/new_layer_2/ReluRelu'sequential/new_layer_2/BiasAdd:output:0*
T0*1
_output_shapes
:������������
0sequential/batch_normalization_13/ReadVariableOpReadVariableOp9sequential_batch_normalization_13_readvariableop_resource*
_output_shapes
:*
dtype0�
2sequential/batch_normalization_13/ReadVariableOp_1ReadVariableOp;sequential_batch_normalization_13_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Asequential/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOpJsequential_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Csequential/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLsequential_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
2sequential/batch_normalization_13/FusedBatchNormV3FusedBatchNormV3)sequential/new_layer_2/Relu:activations:08sequential/batch_normalization_13/ReadVariableOp:value:0:sequential/batch_normalization_13/ReadVariableOp_1:value:0Isequential/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0Ksequential/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
,sequential/new_layer_3/Conv2D/ReadVariableOpReadVariableOp5sequential_new_layer_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/new_layer_3/Conv2DConv2D6sequential/batch_normalization_13/FusedBatchNormV3:y:04sequential/new_layer_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
-sequential/new_layer_3/BiasAdd/ReadVariableOpReadVariableOp6sequential_new_layer_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/new_layer_3/BiasAddBiasAdd&sequential/new_layer_3/Conv2D:output:05sequential/new_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/new_layer_3/ReluRelu'sequential/new_layer_3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
,sequential/new_layer_4/Conv2D/ReadVariableOpReadVariableOp5sequential_new_layer_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/new_layer_4/Conv2DConv2D)sequential/new_layer_3/Relu:activations:04sequential/new_layer_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
-sequential/new_layer_4/BiasAdd/ReadVariableOpReadVariableOp6sequential_new_layer_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/new_layer_4/BiasAddBiasAdd&sequential/new_layer_4/Conv2D:output:05sequential/new_layer_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/new_layer_4/ReluRelu'sequential/new_layer_4/BiasAdd:output:0*
T0*1
_output_shapes
:������������
0sequential/batch_normalization_12/ReadVariableOpReadVariableOp9sequential_batch_normalization_12_readvariableop_resource*
_output_shapes
:*
dtype0�
2sequential/batch_normalization_12/ReadVariableOp_1ReadVariableOp;sequential_batch_normalization_12_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Asequential/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOpJsequential_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Csequential/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLsequential_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
2sequential/batch_normalization_12/FusedBatchNormV3FusedBatchNormV3)sequential/new_layer_4/Relu:activations:08sequential/batch_normalization_12/ReadVariableOp:value:0:sequential/batch_normalization_12/ReadVariableOp_1:value:0Isequential/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0Ksequential/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d/Conv2DConv2D6sequential/batch_normalization_12/FusedBatchNormV3:y:0/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������~
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
0sequential/batch_normalization_11/ReadVariableOpReadVariableOp9sequential_batch_normalization_11_readvariableop_resource*
_output_shapes
:*
dtype0�
2sequential/batch_normalization_11/ReadVariableOp_1ReadVariableOp;sequential_batch_normalization_11_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Asequential/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOpJsequential_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Csequential/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLsequential_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
2sequential/batch_normalization_11/FusedBatchNormV3FusedBatchNormV3&sequential/conv2d_3/Relu:activations:08sequential/batch_normalization_11/ReadVariableOp:value:0:sequential/batch_normalization_11/ReadVariableOp_1:value:0Isequential/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0Ksequential/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
 sequential/max_pooling2d/MaxPoolMaxPool6sequential/batch_normalization_11/FusedBatchNormV3:y:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
�
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_4/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)sequential/conv2d_5/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_5/Conv2DConv2D&sequential/conv2d_4/Relu:activations:01sequential/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*sequential/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_5/BiasAddBiasAdd#sequential/conv2d_5/Conv2D:output:02sequential/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/conv2d_5/ReluRelu$sequential/conv2d_5/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)sequential/conv2d_6/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_6/Conv2DConv2D&sequential/conv2d_5/Relu:activations:01sequential/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*sequential/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_6/BiasAddBiasAdd#sequential/conv2d_6/Conv2D:output:02sequential/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/conv2d_6/ReluRelu$sequential/conv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)sequential/conv2d_7/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_7/Conv2DConv2D&sequential/conv2d_6/Relu:activations:01sequential/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*sequential/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_7/BiasAddBiasAdd#sequential/conv2d_7/Conv2D:output:02sequential/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/conv2d_7/ReluRelu$sequential/conv2d_7/BiasAdd:output:0*
T0*1
_output_shapes
:������������
/sequential/batch_normalization_1/ReadVariableOpReadVariableOp8sequential_batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype0�
1sequential/batch_normalization_1/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype0�
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
1sequential/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3&sequential/conv2d_7/Relu:activations:07sequential/batch_normalization_1/ReadVariableOp:value:09sequential/batch_normalization_1/ReadVariableOp_1:value:0Hsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
"sequential/max_pooling2d_1/MaxPoolMaxPool5sequential/batch_normalization_1/FusedBatchNormV3:y:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
�
)sequential/conv2d_8/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_8/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:01sequential/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*sequential/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_8/BiasAddBiasAdd#sequential/conv2d_8/Conv2D:output:02sequential/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/conv2d_8/ReluRelu$sequential/conv2d_8/BiasAdd:output:0*
T0*1
_output_shapes
:������������
)sequential/conv2d_9/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_9/Conv2DConv2D&sequential/conv2d_8/Relu:activations:01sequential/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*sequential/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_9/BiasAddBiasAdd#sequential/conv2d_9/Conv2D:output:02sequential/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/conv2d_9/ReluRelu$sequential/conv2d_9/BiasAdd:output:0*
T0*1
_output_shapes
:������������
*sequential/conv2d_10/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_10/Conv2DConv2D&sequential/conv2d_9/Relu:activations:02sequential/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
+sequential/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_10/BiasAddBiasAdd$sequential/conv2d_10/Conv2D:output:03sequential/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/conv2d_10/ReluRelu%sequential/conv2d_10/BiasAdd:output:0*
T0*1
_output_shapes
:������������
*sequential/conv2d_11/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_11/Conv2DConv2D'sequential/conv2d_10/Relu:activations:02sequential/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
+sequential/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_11/BiasAddBiasAdd$sequential/conv2d_11/Conv2D:output:03sequential/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential/conv2d_11/ReluRelu%sequential/conv2d_11/BiasAdd:output:0*
T0*1
_output_shapes
:������������
/sequential/batch_normalization_2/ReadVariableOpReadVariableOp8sequential_batch_normalization_2_readvariableop_resource*
_output_shapes
:*
dtype0�
1sequential/batch_normalization_2/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:*
dtype0�
@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Bsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
1sequential/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3'sequential/conv2d_11/Relu:activations:07sequential/batch_normalization_2/ReadVariableOp:value:09sequential/batch_normalization_2/ReadVariableOp_1:value:0Hsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
"sequential/max_pooling2d_2/MaxPoolMaxPool5sequential/batch_normalization_2/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@*
ksize
*
paddingVALID*
strides
�
*sequential/conv2d_12/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_12/Conv2DConv2D+sequential/max_pooling2d_2/MaxPool:output:02sequential/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
+sequential/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_12/BiasAddBiasAdd$sequential/conv2d_12/Conv2D:output:03sequential/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@�
sequential/conv2d_12/ReluRelu%sequential/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
*sequential/conv2d_13/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_13/Conv2DConv2D'sequential/conv2d_12/Relu:activations:02sequential/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
+sequential/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_13/BiasAddBiasAdd$sequential/conv2d_13/Conv2D:output:03sequential/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@�
sequential/conv2d_13/ReluRelu%sequential/conv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
*sequential/conv2d_14/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_14/Conv2DConv2D'sequential/conv2d_13/Relu:activations:02sequential/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
+sequential/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_14/BiasAddBiasAdd$sequential/conv2d_14/Conv2D:output:03sequential/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@�
sequential/conv2d_14/ReluRelu%sequential/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
*sequential/conv2d_15/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential/conv2d_15/Conv2DConv2D'sequential/conv2d_14/Relu:activations:02sequential/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
+sequential/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/conv2d_15/BiasAddBiasAdd$sequential/conv2d_15/Conv2D:output:03sequential/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@�
sequential/conv2d_15/ReluRelu%sequential/conv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
/sequential/batch_normalization_3/ReadVariableOpReadVariableOp8sequential_batch_normalization_3_readvariableop_resource*
_output_shapes
:*
dtype0�
1sequential/batch_normalization_3/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Bsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
1sequential/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3'sequential/conv2d_15/Relu:activations:07sequential/batch_normalization_3/ReadVariableOp:value:09sequential/batch_normalization_3/ReadVariableOp_1:value:0Hsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@:::::*
epsilon%o�:*
is_training( �
"sequential/max_pooling2d_3/MaxPoolMaxPool5sequential/batch_normalization_3/FusedBatchNormV3:y:0*/
_output_shapes
:���������  *
ksize
*
paddingVALID*
strides
�
*sequential/conv2d_16/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential/conv2d_16/Conv2DConv2D+sequential/max_pooling2d_3/MaxPool:output:02sequential/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
+sequential/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential/conv2d_16/BiasAddBiasAdd$sequential/conv2d_16/Conv2D:output:03sequential/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   �
sequential/conv2d_16/ReluRelu%sequential/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
*sequential/conv2d_17/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
sequential/conv2d_17/Conv2DConv2D'sequential/conv2d_16/Relu:activations:02sequential/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
+sequential/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential/conv2d_17/BiasAddBiasAdd$sequential/conv2d_17/Conv2D:output:03sequential/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   �
sequential/conv2d_17/ReluRelu%sequential/conv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
*sequential/conv2d_18/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
sequential/conv2d_18/Conv2DConv2D'sequential/conv2d_17/Relu:activations:02sequential/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
+sequential/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential/conv2d_18/BiasAddBiasAdd$sequential/conv2d_18/Conv2D:output:03sequential/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   �
sequential/conv2d_18/ReluRelu%sequential/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
*sequential/conv2d_19/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
sequential/conv2d_19/Conv2DConv2D'sequential/conv2d_18/Relu:activations:02sequential/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   *
paddingSAME*
strides
�
+sequential/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential/conv2d_19/BiasAddBiasAdd$sequential/conv2d_19/Conv2D:output:03sequential/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������   �
sequential/conv2d_19/ReluRelu%sequential/conv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:���������   �
/sequential/batch_normalization_4/ReadVariableOpReadVariableOp8sequential_batch_normalization_4_readvariableop_resource*
_output_shapes
: *
dtype0�
1sequential/batch_normalization_4/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_4_readvariableop_1_resource*
_output_shapes
: *
dtype0�
@sequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
Bsequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
1sequential/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3'sequential/conv2d_19/Relu:activations:07sequential/batch_normalization_4/ReadVariableOp:value:09sequential/batch_normalization_4/ReadVariableOp_1:value:0Hsequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������   : : : : :*
epsilon%o�:*
is_training( �
"sequential/max_pooling2d_4/MaxPoolMaxPool5sequential/batch_normalization_4/FusedBatchNormV3:y:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
*sequential/conv2d_20/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
sequential/conv2d_20/Conv2DConv2D+sequential/max_pooling2d_4/MaxPool:output:02sequential/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
+sequential/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/conv2d_20/BiasAddBiasAdd$sequential/conv2d_20/Conv2D:output:03sequential/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential/conv2d_20/ReluRelu%sequential/conv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
*sequential/conv2d_21/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential/conv2d_21/Conv2DConv2D'sequential/conv2d_20/Relu:activations:02sequential/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
+sequential/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/conv2d_21/BiasAddBiasAdd$sequential/conv2d_21/Conv2D:output:03sequential/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential/conv2d_21/ReluRelu%sequential/conv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
*sequential/conv2d_22/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential/conv2d_22/Conv2DConv2D'sequential/conv2d_21/Relu:activations:02sequential/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
+sequential/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/conv2d_22/BiasAddBiasAdd$sequential/conv2d_22/Conv2D:output:03sequential/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential/conv2d_22/ReluRelu%sequential/conv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
*sequential/conv2d_23/Conv2D/ReadVariableOpReadVariableOp3sequential_conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential/conv2d_23/Conv2DConv2D'sequential/conv2d_22/Relu:activations:02sequential/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
+sequential/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp4sequential_conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/conv2d_23/BiasAddBiasAdd$sequential/conv2d_23/Conv2D:output:03sequential/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential/conv2d_23/ReluRelu%sequential/conv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
/sequential/batch_normalization_5/ReadVariableOpReadVariableOp8sequential_batch_normalization_5_readvariableop_resource*
_output_shapes
:@*
dtype0�
1sequential/batch_normalization_5/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_5_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
@sequential/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Bsequential/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
1sequential/batch_normalization_5/FusedBatchNormV3FusedBatchNormV3'sequential/conv2d_23/Relu:activations:07sequential/batch_normalization_5/ReadVariableOp:value:09sequential/batch_normalization_5/ReadVariableOp_1:value:0Hsequential/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
"sequential/max_pooling2d_5/MaxPoolMaxPool5sequential/batch_normalization_5/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
sequential/flatten/ReshapeReshape+sequential/max_pooling2d_5/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:���������� �
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0�
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_1/MatMulMatMul!sequential/dense/BiasAdd:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential/dense_2/MatMulMatMul#sequential/dense_1/BiasAdd:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
IdentityIdentity#sequential/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�%
NoOpNoOpA^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_1/ReadVariableOp2^sequential/batch_normalization_1/ReadVariableOp_1B^sequential/batch_normalization_11/FusedBatchNormV3/ReadVariableOpD^sequential/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_11^sequential/batch_normalization_11/ReadVariableOp3^sequential/batch_normalization_11/ReadVariableOp_1B^sequential/batch_normalization_12/FusedBatchNormV3/ReadVariableOpD^sequential/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_11^sequential/batch_normalization_12/ReadVariableOp3^sequential/batch_normalization_12/ReadVariableOp_1B^sequential/batch_normalization_13/FusedBatchNormV3/ReadVariableOpD^sequential/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_11^sequential/batch_normalization_13/ReadVariableOp3^sequential/batch_normalization_13/ReadVariableOp_1A^sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_2/ReadVariableOp2^sequential/batch_normalization_2/ReadVariableOp_1A^sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_3/ReadVariableOp2^sequential/batch_normalization_3/ReadVariableOp_1A^sequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_4/ReadVariableOp2^sequential/batch_normalization_4/ReadVariableOp_1A^sequential/batch_normalization_5/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_5/ReadVariableOp2^sequential/batch_normalization_5/ReadVariableOp_1)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp,^sequential/conv2d_10/BiasAdd/ReadVariableOp+^sequential/conv2d_10/Conv2D/ReadVariableOp,^sequential/conv2d_11/BiasAdd/ReadVariableOp+^sequential/conv2d_11/Conv2D/ReadVariableOp,^sequential/conv2d_12/BiasAdd/ReadVariableOp+^sequential/conv2d_12/Conv2D/ReadVariableOp,^sequential/conv2d_13/BiasAdd/ReadVariableOp+^sequential/conv2d_13/Conv2D/ReadVariableOp,^sequential/conv2d_14/BiasAdd/ReadVariableOp+^sequential/conv2d_14/Conv2D/ReadVariableOp,^sequential/conv2d_15/BiasAdd/ReadVariableOp+^sequential/conv2d_15/Conv2D/ReadVariableOp,^sequential/conv2d_16/BiasAdd/ReadVariableOp+^sequential/conv2d_16/Conv2D/ReadVariableOp,^sequential/conv2d_17/BiasAdd/ReadVariableOp+^sequential/conv2d_17/Conv2D/ReadVariableOp,^sequential/conv2d_18/BiasAdd/ReadVariableOp+^sequential/conv2d_18/Conv2D/ReadVariableOp,^sequential/conv2d_19/BiasAdd/ReadVariableOp+^sequential/conv2d_19/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp,^sequential/conv2d_20/BiasAdd/ReadVariableOp+^sequential/conv2d_20/Conv2D/ReadVariableOp,^sequential/conv2d_21/BiasAdd/ReadVariableOp+^sequential/conv2d_21/Conv2D/ReadVariableOp,^sequential/conv2d_22/BiasAdd/ReadVariableOp+^sequential/conv2d_22/Conv2D/ReadVariableOp,^sequential/conv2d_23/BiasAdd/ReadVariableOp+^sequential/conv2d_23/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp+^sequential/conv2d_5/BiasAdd/ReadVariableOp*^sequential/conv2d_5/Conv2D/ReadVariableOp+^sequential/conv2d_6/BiasAdd/ReadVariableOp*^sequential/conv2d_6/Conv2D/ReadVariableOp+^sequential/conv2d_7/BiasAdd/ReadVariableOp*^sequential/conv2d_7/Conv2D/ReadVariableOp+^sequential/conv2d_8/BiasAdd/ReadVariableOp*^sequential/conv2d_8/Conv2D/ReadVariableOp+^sequential/conv2d_9/BiasAdd/ReadVariableOp*^sequential/conv2d_9/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp.^sequential/new_layer_1/BiasAdd/ReadVariableOp-^sequential/new_layer_1/Conv2D/ReadVariableOp.^sequential/new_layer_2/BiasAdd/ReadVariableOp-^sequential/new_layer_2/Conv2D/ReadVariableOp.^sequential/new_layer_3/BiasAdd/ReadVariableOp-^sequential/new_layer_3/Conv2D/ReadVariableOp.^sequential/new_layer_4/BiasAdd/ReadVariableOp-^sequential/new_layer_4/Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12�
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2f
1sequential/batch_normalization_1/ReadVariableOp_11sequential/batch_normalization_1/ReadVariableOp_12b
/sequential/batch_normalization_1/ReadVariableOp/sequential/batch_normalization_1/ReadVariableOp2�
Csequential/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Csequential/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12�
Asequential/batch_normalization_11/FusedBatchNormV3/ReadVariableOpAsequential/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2h
2sequential/batch_normalization_11/ReadVariableOp_12sequential/batch_normalization_11/ReadVariableOp_12d
0sequential/batch_normalization_11/ReadVariableOp0sequential/batch_normalization_11/ReadVariableOp2�
Csequential/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Csequential/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12�
Asequential/batch_normalization_12/FusedBatchNormV3/ReadVariableOpAsequential/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2h
2sequential/batch_normalization_12/ReadVariableOp_12sequential/batch_normalization_12/ReadVariableOp_12d
0sequential/batch_normalization_12/ReadVariableOp0sequential/batch_normalization_12/ReadVariableOp2�
Csequential/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Csequential/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12�
Asequential/batch_normalization_13/FusedBatchNormV3/ReadVariableOpAsequential/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2h
2sequential/batch_normalization_13/ReadVariableOp_12sequential/batch_normalization_13/ReadVariableOp_12d
0sequential/batch_normalization_13/ReadVariableOp0sequential/batch_normalization_13/ReadVariableOp2�
Bsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12�
@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2f
1sequential/batch_normalization_2/ReadVariableOp_11sequential/batch_normalization_2/ReadVariableOp_12b
/sequential/batch_normalization_2/ReadVariableOp/sequential/batch_normalization_2/ReadVariableOp2�
Bsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12�
@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2f
1sequential/batch_normalization_3/ReadVariableOp_11sequential/batch_normalization_3/ReadVariableOp_12b
/sequential/batch_normalization_3/ReadVariableOp/sequential/batch_normalization_3/ReadVariableOp2�
Bsequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12�
@sequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2f
1sequential/batch_normalization_4/ReadVariableOp_11sequential/batch_normalization_4/ReadVariableOp_12b
/sequential/batch_normalization_4/ReadVariableOp/sequential/batch_normalization_4/ReadVariableOp2�
Bsequential/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12�
@sequential/batch_normalization_5/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2f
1sequential/batch_normalization_5/ReadVariableOp_11sequential/batch_normalization_5/ReadVariableOp_12b
/sequential/batch_normalization_5/ReadVariableOp/sequential/batch_normalization_5/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2Z
+sequential/conv2d_10/BiasAdd/ReadVariableOp+sequential/conv2d_10/BiasAdd/ReadVariableOp2X
*sequential/conv2d_10/Conv2D/ReadVariableOp*sequential/conv2d_10/Conv2D/ReadVariableOp2Z
+sequential/conv2d_11/BiasAdd/ReadVariableOp+sequential/conv2d_11/BiasAdd/ReadVariableOp2X
*sequential/conv2d_11/Conv2D/ReadVariableOp*sequential/conv2d_11/Conv2D/ReadVariableOp2Z
+sequential/conv2d_12/BiasAdd/ReadVariableOp+sequential/conv2d_12/BiasAdd/ReadVariableOp2X
*sequential/conv2d_12/Conv2D/ReadVariableOp*sequential/conv2d_12/Conv2D/ReadVariableOp2Z
+sequential/conv2d_13/BiasAdd/ReadVariableOp+sequential/conv2d_13/BiasAdd/ReadVariableOp2X
*sequential/conv2d_13/Conv2D/ReadVariableOp*sequential/conv2d_13/Conv2D/ReadVariableOp2Z
+sequential/conv2d_14/BiasAdd/ReadVariableOp+sequential/conv2d_14/BiasAdd/ReadVariableOp2X
*sequential/conv2d_14/Conv2D/ReadVariableOp*sequential/conv2d_14/Conv2D/ReadVariableOp2Z
+sequential/conv2d_15/BiasAdd/ReadVariableOp+sequential/conv2d_15/BiasAdd/ReadVariableOp2X
*sequential/conv2d_15/Conv2D/ReadVariableOp*sequential/conv2d_15/Conv2D/ReadVariableOp2Z
+sequential/conv2d_16/BiasAdd/ReadVariableOp+sequential/conv2d_16/BiasAdd/ReadVariableOp2X
*sequential/conv2d_16/Conv2D/ReadVariableOp*sequential/conv2d_16/Conv2D/ReadVariableOp2Z
+sequential/conv2d_17/BiasAdd/ReadVariableOp+sequential/conv2d_17/BiasAdd/ReadVariableOp2X
*sequential/conv2d_17/Conv2D/ReadVariableOp*sequential/conv2d_17/Conv2D/ReadVariableOp2Z
+sequential/conv2d_18/BiasAdd/ReadVariableOp+sequential/conv2d_18/BiasAdd/ReadVariableOp2X
*sequential/conv2d_18/Conv2D/ReadVariableOp*sequential/conv2d_18/Conv2D/ReadVariableOp2Z
+sequential/conv2d_19/BiasAdd/ReadVariableOp+sequential/conv2d_19/BiasAdd/ReadVariableOp2X
*sequential/conv2d_19/Conv2D/ReadVariableOp*sequential/conv2d_19/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2Z
+sequential/conv2d_20/BiasAdd/ReadVariableOp+sequential/conv2d_20/BiasAdd/ReadVariableOp2X
*sequential/conv2d_20/Conv2D/ReadVariableOp*sequential/conv2d_20/Conv2D/ReadVariableOp2Z
+sequential/conv2d_21/BiasAdd/ReadVariableOp+sequential/conv2d_21/BiasAdd/ReadVariableOp2X
*sequential/conv2d_21/Conv2D/ReadVariableOp*sequential/conv2d_21/Conv2D/ReadVariableOp2Z
+sequential/conv2d_22/BiasAdd/ReadVariableOp+sequential/conv2d_22/BiasAdd/ReadVariableOp2X
*sequential/conv2d_22/Conv2D/ReadVariableOp*sequential/conv2d_22/Conv2D/ReadVariableOp2Z
+sequential/conv2d_23/BiasAdd/ReadVariableOp+sequential/conv2d_23/BiasAdd/ReadVariableOp2X
*sequential/conv2d_23/Conv2D/ReadVariableOp*sequential/conv2d_23/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2X
*sequential/conv2d_5/BiasAdd/ReadVariableOp*sequential/conv2d_5/BiasAdd/ReadVariableOp2V
)sequential/conv2d_5/Conv2D/ReadVariableOp)sequential/conv2d_5/Conv2D/ReadVariableOp2X
*sequential/conv2d_6/BiasAdd/ReadVariableOp*sequential/conv2d_6/BiasAdd/ReadVariableOp2V
)sequential/conv2d_6/Conv2D/ReadVariableOp)sequential/conv2d_6/Conv2D/ReadVariableOp2X
*sequential/conv2d_7/BiasAdd/ReadVariableOp*sequential/conv2d_7/BiasAdd/ReadVariableOp2V
)sequential/conv2d_7/Conv2D/ReadVariableOp)sequential/conv2d_7/Conv2D/ReadVariableOp2X
*sequential/conv2d_8/BiasAdd/ReadVariableOp*sequential/conv2d_8/BiasAdd/ReadVariableOp2V
)sequential/conv2d_8/Conv2D/ReadVariableOp)sequential/conv2d_8/Conv2D/ReadVariableOp2X
*sequential/conv2d_9/BiasAdd/ReadVariableOp*sequential/conv2d_9/BiasAdd/ReadVariableOp2V
)sequential/conv2d_9/Conv2D/ReadVariableOp)sequential/conv2d_9/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2^
-sequential/new_layer_1/BiasAdd/ReadVariableOp-sequential/new_layer_1/BiasAdd/ReadVariableOp2\
,sequential/new_layer_1/Conv2D/ReadVariableOp,sequential/new_layer_1/Conv2D/ReadVariableOp2^
-sequential/new_layer_2/BiasAdd/ReadVariableOp-sequential/new_layer_2/BiasAdd/ReadVariableOp2\
,sequential/new_layer_2/Conv2D/ReadVariableOp,sequential/new_layer_2/Conv2D/ReadVariableOp2^
-sequential/new_layer_3/BiasAdd/ReadVariableOp-sequential/new_layer_3/BiasAdd/ReadVariableOp2\
,sequential/new_layer_3/Conv2D/ReadVariableOp,sequential/new_layer_3/Conv2D/ReadVariableOp2^
-sequential/new_layer_4/BiasAdd/ReadVariableOp-sequential/new_layer_4/BiasAdd/ReadVariableOp2\
,sequential/new_layer_4/Conv2D/ReadVariableOp,sequential/new_layer_4/Conv2D/ReadVariableOp:(^$
"
_user_specified_name
resource:(]$
"
_user_specified_name
resource:(\$
"
_user_specified_name
resource:([$
"
_user_specified_name
resource:(Z$
"
_user_specified_name
resource:(Y$
"
_user_specified_name
resource:(X$
"
_user_specified_name
resource:(W$
"
_user_specified_name
resource:(V$
"
_user_specified_name
resource:(U$
"
_user_specified_name
resource:(T$
"
_user_specified_name
resource:(S$
"
_user_specified_name
resource:(R$
"
_user_specified_name
resource:(Q$
"
_user_specified_name
resource:(P$
"
_user_specified_name
resource:(O$
"
_user_specified_name
resource:(N$
"
_user_specified_name
resource:(M$
"
_user_specified_name
resource:(L$
"
_user_specified_name
resource:(K$
"
_user_specified_name
resource:(J$
"
_user_specified_name
resource:(I$
"
_user_specified_name
resource:(H$
"
_user_specified_name
resource:(G$
"
_user_specified_name
resource:(F$
"
_user_specified_name
resource:(E$
"
_user_specified_name
resource:(D$
"
_user_specified_name
resource:(C$
"
_user_specified_name
resource:(B$
"
_user_specified_name
resource:(A$
"
_user_specified_name
resource:(@$
"
_user_specified_name
resource:(?$
"
_user_specified_name
resource:(>$
"
_user_specified_name
resource:(=$
"
_user_specified_name
resource:(<$
"
_user_specified_name
resource:(;$
"
_user_specified_name
resource:(:$
"
_user_specified_name
resource:(9$
"
_user_specified_name
resource:(8$
"
_user_specified_name
resource:(7$
"
_user_specified_name
resource:(6$
"
_user_specified_name
resource:(5$
"
_user_specified_name
resource:(4$
"
_user_specified_name
resource:(3$
"
_user_specified_name
resource:(2$
"
_user_specified_name
resource:(1$
"
_user_specified_name
resource:(0$
"
_user_specified_name
resource:(/$
"
_user_specified_name
resource:(.$
"
_user_specified_name
resource:(-$
"
_user_specified_name
resource:(,$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:()$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:b ^
1
_output_shapes
:�����������
)
_user_specified_namerescaling_input
�
�
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_29594

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_29232
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�

�
5__inference_batch_normalization_3_layer_call_fn_30263

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_27208�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30259:%!

_user_specified_name30257:%!

_user_specified_name30255:%!

_user_specified_name30253:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_12_layer_call_fn_29665

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_26930�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29661:%!

_user_specified_name29659:%!

_user_specified_name29657:%!

_user_specified_name29655:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_20_layer_call_and_return_conditional_losses_27880

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_4_layer_call_fn_30469

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_27329�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_9_layer_call_and_return_conditional_losses_27674

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
U
rescaling_inputB
!serving_default_rescaling_input:0�����������;
dense_20
StatefulPartitionedCall:0���������
tensorflow/serving/predict:��

�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
layer_with_weights-10
layer-11
layer-12
layer_with_weights-11
layer-13
layer_with_weights-12
layer-14
layer_with_weights-13
layer-15
layer_with_weights-14
layer-16
layer_with_weights-15
layer-17
layer-18
layer_with_weights-16
layer-19
layer_with_weights-17
layer-20
layer_with_weights-18
layer-21
layer_with_weights-19
layer-22
layer_with_weights-20
layer-23
layer-24
layer_with_weights-21
layer-25
layer_with_weights-22
layer-26
layer_with_weights-23
layer-27
layer_with_weights-24
layer-28
layer_with_weights-25
layer-29
layer-30
 layer_with_weights-26
 layer-31
!layer_with_weights-27
!layer-32
"layer_with_weights-28
"layer-33
#layer_with_weights-29
#layer-34
$layer_with_weights-30
$layer-35
%layer-36
&layer_with_weights-31
&layer-37
'layer_with_weights-32
'layer-38
(layer_with_weights-33
(layer-39
)layer_with_weights-34
)layer-40
*layer_with_weights-35
*layer-41
+layer-42
,layer-43
-layer_with_weights-36
-layer-44
.layer_with_weights-37
.layer-45
/layer_with_weights-38
/layer-46
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6_default_save_signature
7
signatures
8	optimizer
#9_self_saveable_object_factories"
_tf_keras_sequential
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
#@_self_saveable_object_factories"
_tf_keras_layer
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias
#I_self_saveable_object_factories
 J_jit_compiled_convolution_op"
_tf_keras_layer
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias
#S_self_saveable_object_factories
 T_jit_compiled_convolution_op"
_tf_keras_layer
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses
[axis
	\gamma
]beta
^moving_mean
_moving_variance
#`_self_saveable_object_factories"
_tf_keras_layer
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

gkernel
hbias
#i_self_saveable_object_factories
 j_jit_compiled_convolution_op"
_tf_keras_layer
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

qkernel
rbias
#s_self_saveable_object_factories
 t_jit_compiled_convolution_op"
_tf_keras_layer
�
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses
{axis
	|gamma
}beta
~moving_mean
moving_variance
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
G0
H1
Q2
R3
\4
]5
^6
_7
g8
h9
q10
r11
|12
}13
~14
15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77
�78
�79
�80
�81
�82
�83
�84
�85
�86
�87
�88
�89
�90
�91
�92
�93"
trackable_list_wrapper
�
G0
H1
Q2
R3
\4
]5
g6
h7
q8
r9
|10
}11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
6_default_save_signature
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
*__inference_sequential_layer_call_fn_28429
*__inference_sequential_layer_call_fn_28622�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_sequential_layer_call_and_return_conditional_losses_27997
E__inference_sequential_layer_call_and_return_conditional_losses_28236�
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
 z�trace_0z�trace_1
�B�
 __inference__wrapped_model_26850rescaling_input"�
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
-
�serving_default"
signature_map
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�	momentums
�_update_step_xla"
experimentalOptimizer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_rescaling_layer_call_fn_29502�
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
 z�trace_0
�
�trace_02�
D__inference_rescaling_layer_call_and_return_conditional_losses_29510�
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
 z�trace_0
 "
trackable_dict_wrapper
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_new_layer_1_layer_call_fn_29519�
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
 z�trace_0
�
�trace_02�
F__inference_new_layer_1_layer_call_and_return_conditional_losses_29530�
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
 z�trace_0
,:*2new_layer_1/kernel
:2new_layer_1/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_new_layer_2_layer_call_fn_29539�
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
 z�trace_0
�
�trace_02�
F__inference_new_layer_2_layer_call_and_return_conditional_losses_29550�
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
 z�trace_0
,:*2new_layer_2/kernel
:2new_layer_2/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
<
\0
]1
^2
_3"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_13_layer_call_fn_29563
6__inference_batch_normalization_13_layer_call_fn_29576�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_29594
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_29612�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_13/gamma
):'2batch_normalization_13/beta
2:0 (2"batch_normalization_13/moving_mean
6:4 (2&batch_normalization_13/moving_variance
 "
trackable_dict_wrapper
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_new_layer_3_layer_call_fn_29621�
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
 z�trace_0
�
�trace_02�
F__inference_new_layer_3_layer_call_and_return_conditional_losses_29632�
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
 z�trace_0
,:*2new_layer_3/kernel
:2new_layer_3/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_new_layer_4_layer_call_fn_29641�
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
 z�trace_0
�
�trace_02�
F__inference_new_layer_4_layer_call_and_return_conditional_losses_29652�
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
 z�trace_0
,:*2new_layer_4/kernel
:2new_layer_4/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
<
|0
}1
~2
3"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_12_layer_call_fn_29665
6__inference_batch_normalization_12_layer_call_fn_29678�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_29696
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_29714�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_12/gamma
):'2batch_normalization_12/beta
2:0 (2"batch_normalization_12/moving_mean
6:4 (2&batch_normalization_12/moving_variance
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_conv2d_layer_call_fn_29723�
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
 z�trace_0
�
�trace_02�
A__inference_conv2d_layer_call_and_return_conditional_losses_29734�
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
 z�trace_0
':%2conv2d/kernel
:2conv2d/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_1_layer_call_fn_29743�
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
 z�trace_0
�
�trace_02�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_29754�
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
 z�trace_0
):'2conv2d_1/kernel
:2conv2d_1/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_2_layer_call_fn_29763�
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
 z�trace_0
�
�trace_02�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_29774�
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
 z�trace_0
):'2conv2d_2/kernel
:2conv2d_2/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_3_layer_call_fn_29783�
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
 z�trace_0
�
�trace_02�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_29794�
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
 z�trace_0
):'2conv2d_3/kernel
:2conv2d_3/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_11_layer_call_fn_29807
6__inference_batch_normalization_11_layer_call_fn_29820�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_29838
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_29856�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_11/gamma
):'2batch_normalization_11/beta
2:0 (2"batch_normalization_11/moving_mean
6:4 (2&batch_normalization_11/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_max_pooling2d_layer_call_fn_29861�
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
 z�trace_0
�
�trace_02�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_29866�
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
 z�trace_0
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_4_layer_call_fn_29875�
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
 z�trace_0
�
�trace_02�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_29886�
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
 z�trace_0
):'2conv2d_4/kernel
:2conv2d_4/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_5_layer_call_fn_29895�
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
 z�trace_0
�
�trace_02�
C__inference_conv2d_5_layer_call_and_return_conditional_losses_29906�
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
 z�trace_0
):'2conv2d_5/kernel
:2conv2d_5/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_6_layer_call_fn_29915�
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
 z�trace_0
�
�trace_02�
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29926�
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
 z�trace_0
):'2conv2d_6/kernel
:2conv2d_6/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_7_layer_call_fn_29935�
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
 z�trace_0
�
�trace_02�
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29946�
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
 z�trace_0
):'2conv2d_7/kernel
:2conv2d_7/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_1_layer_call_fn_29959
5__inference_batch_normalization_1_layer_call_fn_29972�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_29990
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_30008�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'2batch_normalization_1/gamma
(:&2batch_normalization_1/beta
1:/ (2!batch_normalization_1/moving_mean
5:3 (2%batch_normalization_1/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_1_layer_call_fn_30013�
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
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_30018�
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
 z�trace_0
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_8_layer_call_fn_30027�
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
 z�trace_0
�
�trace_02�
C__inference_conv2d_8_layer_call_and_return_conditional_losses_30038�
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
 z�trace_0
):'2conv2d_8/kernel
:2conv2d_8/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_9_layer_call_fn_30047�
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
 z�trace_0
�
�trace_02�
C__inference_conv2d_9_layer_call_and_return_conditional_losses_30058�
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
 z�trace_0
):'2conv2d_9/kernel
:2conv2d_9/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_10_layer_call_fn_30067�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30078�
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
 z�trace_0
*:(2conv2d_10/kernel
:2conv2d_10/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_11_layer_call_fn_30087�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30098�
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
 z�trace_0
*:(2conv2d_11/kernel
:2conv2d_11/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_2_layer_call_fn_30111
5__inference_batch_normalization_2_layer_call_fn_30124�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_30142
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_30160�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'2batch_normalization_2/gamma
(:&2batch_normalization_2/beta
1:/ (2!batch_normalization_2/moving_mean
5:3 (2%batch_normalization_2/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_2_layer_call_fn_30165�
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
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_30170�
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
 z�trace_0
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_12_layer_call_fn_30179�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_12_layer_call_and_return_conditional_losses_30190�
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
 z�trace_0
*:(2conv2d_12/kernel
:2conv2d_12/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_13_layer_call_fn_30199�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_13_layer_call_and_return_conditional_losses_30210�
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
 z�trace_0
*:(2conv2d_13/kernel
:2conv2d_13/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_14_layer_call_fn_30219�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_30230�
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
 z�trace_0
*:(2conv2d_14/kernel
:2conv2d_14/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_15_layer_call_fn_30239�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_15_layer_call_and_return_conditional_losses_30250�
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
 z�trace_0
*:(2conv2d_15/kernel
:2conv2d_15/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_3_layer_call_fn_30263
5__inference_batch_normalization_3_layer_call_fn_30276�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_30294
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_30312�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'2batch_normalization_3/gamma
(:&2batch_normalization_3/beta
1:/ (2!batch_normalization_3/moving_mean
5:3 (2%batch_normalization_3/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_3_layer_call_fn_30317�
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
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_30322�
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
 z�trace_0
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_16_layer_call_fn_30331�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_16_layer_call_and_return_conditional_losses_30342�
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
 z�trace_0
*:( 2conv2d_16/kernel
: 2conv2d_16/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_17_layer_call_fn_30351�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_17_layer_call_and_return_conditional_losses_30362�
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
 z�trace_0
*:(  2conv2d_17/kernel
: 2conv2d_17/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_18_layer_call_fn_30371�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_18_layer_call_and_return_conditional_losses_30382�
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
 z�trace_0
*:(  2conv2d_18/kernel
: 2conv2d_18/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_19_layer_call_fn_30391�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_19_layer_call_and_return_conditional_losses_30402�
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
 z�trace_0
*:(  2conv2d_19/kernel
: 2conv2d_19/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_4_layer_call_fn_30415
5__inference_batch_normalization_4_layer_call_fn_30428�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_30446
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_30464�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):' 2batch_normalization_4/gamma
(:& 2batch_normalization_4/beta
1:/  (2!batch_normalization_4/moving_mean
5:3  (2%batch_normalization_4/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_4_layer_call_fn_30469�
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
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_30474�
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
 z�trace_0
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_20_layer_call_fn_30483�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_20_layer_call_and_return_conditional_losses_30494�
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
 z�trace_0
*:( @2conv2d_20/kernel
:@2conv2d_20/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_21_layer_call_fn_30503�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_21_layer_call_and_return_conditional_losses_30514�
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
 z�trace_0
*:(@@2conv2d_21/kernel
:@2conv2d_21/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_22_layer_call_fn_30523�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_22_layer_call_and_return_conditional_losses_30534�
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
 z�trace_0
*:(@@2conv2d_22/kernel
:@2conv2d_22/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_23_layer_call_fn_30543�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_23_layer_call_and_return_conditional_losses_30554�
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
 z�trace_0
*:(@@2conv2d_23/kernel
:@2conv2d_23/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_5_layer_call_fn_30567
5__inference_batch_normalization_5_layer_call_fn_30580�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_30598
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_30616�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'@2batch_normalization_5/gamma
(:&@2batch_normalization_5/beta
1:/@ (2!batch_normalization_5/moving_mean
5:3@ (2%batch_normalization_5/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_5_layer_call_fn_30621�
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
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_30626�
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
 z�trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_flatten_layer_call_fn_30631�
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
 z�trace_0
�
�trace_02�
B__inference_flatten_layer_call_and_return_conditional_losses_30637�
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
 z�trace_0
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_dense_layer_call_fn_30646�
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
 z�trace_0
�
�trace_02�
@__inference_dense_layer_call_and_return_conditional_losses_30656�
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
 z�trace_0
 :
� �2dense/kernel
:�2
dense/bias
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_1_layer_call_fn_30665�
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
 z�trace_0
�
�trace_02�
B__inference_dense_1_layer_call_and_return_conditional_losses_30675�
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
 z�trace_0
": 
��2dense_1/kernel
:�2dense_1/bias
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_2_layer_call_fn_30684�
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
 z�trace_0
�
�trace_02�
B__inference_dense_2_layer_call_and_return_conditional_losses_30694�
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
 z�trace_0
!:	�
2dense_2/kernel
:
2dense_2/bias
 "
trackable_dict_wrapper
�
^0
_1
~2
3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15"
trackable_list_wrapper
�
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
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_sequential_layer_call_fn_28429rescaling_input"�
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
*__inference_sequential_layer_call_fn_28622rescaling_input"�
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
E__inference_sequential_layer_call_and_return_conditional_losses_27997rescaling_input"�
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
E__inference_sequential_layer_call_and_return_conditional_losses_28236rescaling_input"�
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
#__inference_signature_wrapper_29107rescaling_input"�
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
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77
�78"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77"
trackable_list_wrapper
�)
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_19
�trace_20
�trace_21
�trace_22
�trace_23
�trace_24
�trace_25
�trace_26
�trace_27
�trace_28
�trace_29
�trace_30
�trace_31
�trace_32
�trace_33
�trace_34
�trace_35
�trace_36
�trace_37
�trace_38
�trace_39
�trace_40
�trace_41
�trace_42
�trace_43
�trace_44
�trace_45
�trace_46
�trace_47
�trace_48
�trace_49
�trace_50
�trace_51
�trace_52
�trace_53
�trace_54
�trace_55
�trace_56
�trace_57
�trace_58
�trace_59
�trace_60
�trace_61
�trace_62
�trace_63
�trace_64
�trace_65
�trace_66
�trace_67
�trace_68
�trace_69
�trace_70
�trace_71
�trace_72
�trace_73
�trace_74
�trace_75
�trace_76
�trace_772�
"__inference__update_step_xla_29112
"__inference__update_step_xla_29117
"__inference__update_step_xla_29122
"__inference__update_step_xla_29127
"__inference__update_step_xla_29132
"__inference__update_step_xla_29137
"__inference__update_step_xla_29142
"__inference__update_step_xla_29147
"__inference__update_step_xla_29152
"__inference__update_step_xla_29157
"__inference__update_step_xla_29162
"__inference__update_step_xla_29167
"__inference__update_step_xla_29172
"__inference__update_step_xla_29177
"__inference__update_step_xla_29182
"__inference__update_step_xla_29187
"__inference__update_step_xla_29192
"__inference__update_step_xla_29197
"__inference__update_step_xla_29202
"__inference__update_step_xla_29207
"__inference__update_step_xla_29212
"__inference__update_step_xla_29217
"__inference__update_step_xla_29222
"__inference__update_step_xla_29227
"__inference__update_step_xla_29232
"__inference__update_step_xla_29237
"__inference__update_step_xla_29242
"__inference__update_step_xla_29247
"__inference__update_step_xla_29252
"__inference__update_step_xla_29257
"__inference__update_step_xla_29262
"__inference__update_step_xla_29267
"__inference__update_step_xla_29272
"__inference__update_step_xla_29277
"__inference__update_step_xla_29282
"__inference__update_step_xla_29287
"__inference__update_step_xla_29292
"__inference__update_step_xla_29297
"__inference__update_step_xla_29302
"__inference__update_step_xla_29307
"__inference__update_step_xla_29312
"__inference__update_step_xla_29317
"__inference__update_step_xla_29322
"__inference__update_step_xla_29327
"__inference__update_step_xla_29332
"__inference__update_step_xla_29337
"__inference__update_step_xla_29342
"__inference__update_step_xla_29347
"__inference__update_step_xla_29352
"__inference__update_step_xla_29357
"__inference__update_step_xla_29362
"__inference__update_step_xla_29367
"__inference__update_step_xla_29372
"__inference__update_step_xla_29377
"__inference__update_step_xla_29382
"__inference__update_step_xla_29387
"__inference__update_step_xla_29392
"__inference__update_step_xla_29397
"__inference__update_step_xla_29402
"__inference__update_step_xla_29407
"__inference__update_step_xla_29412
"__inference__update_step_xla_29417
"__inference__update_step_xla_29422
"__inference__update_step_xla_29427
"__inference__update_step_xla_29432
"__inference__update_step_xla_29437
"__inference__update_step_xla_29442
"__inference__update_step_xla_29447
"__inference__update_step_xla_29452
"__inference__update_step_xla_29457
"__inference__update_step_xla_29462
"__inference__update_step_xla_29467
"__inference__update_step_xla_29472
"__inference__update_step_xla_29477
"__inference__update_step_xla_29482
"__inference__update_step_xla_29487
"__inference__update_step_xla_29492
"__inference__update_step_xla_29497�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
 0z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5z�trace_6z�trace_7z�trace_8z�trace_9z�trace_10z�trace_11z�trace_12z�trace_13z�trace_14z�trace_15z�trace_16z�trace_17z�trace_18z�trace_19z�trace_20z�trace_21z�trace_22z�trace_23z�trace_24z�trace_25z�trace_26z�trace_27z�trace_28z�trace_29z�trace_30z�trace_31z�trace_32z�trace_33z�trace_34z�trace_35z�trace_36z�trace_37z�trace_38z�trace_39z�trace_40z�trace_41z�trace_42z�trace_43z�trace_44z�trace_45z�trace_46z�trace_47z�trace_48z�trace_49z�trace_50z�trace_51z�trace_52z�trace_53z�trace_54z�trace_55z�trace_56z�trace_57z�trace_58z�trace_59z�trace_60z�trace_61z�trace_62z�trace_63z�trace_64z�trace_65z�trace_66z�trace_67z�trace_68z�trace_69z�trace_70z�trace_71z�trace_72z�trace_73z�trace_74z�trace_75z�trace_76z�trace_77
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
)__inference_rescaling_layer_call_fn_29502inputs"�
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
D__inference_rescaling_layer_call_and_return_conditional_losses_29510inputs"�
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
+__inference_new_layer_1_layer_call_fn_29519inputs"�
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
F__inference_new_layer_1_layer_call_and_return_conditional_losses_29530inputs"�
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
+__inference_new_layer_2_layer_call_fn_29539inputs"�
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
F__inference_new_layer_2_layer_call_and_return_conditional_losses_29550inputs"�
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
.
^0
_1"
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
6__inference_batch_normalization_13_layer_call_fn_29563inputs"�
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
6__inference_batch_normalization_13_layer_call_fn_29576inputs"�
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
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_29594inputs"�
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
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_29612inputs"�
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
+__inference_new_layer_3_layer_call_fn_29621inputs"�
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
F__inference_new_layer_3_layer_call_and_return_conditional_losses_29632inputs"�
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
+__inference_new_layer_4_layer_call_fn_29641inputs"�
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
F__inference_new_layer_4_layer_call_and_return_conditional_losses_29652inputs"�
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
.
~0
1"
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
6__inference_batch_normalization_12_layer_call_fn_29665inputs"�
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
6__inference_batch_normalization_12_layer_call_fn_29678inputs"�
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
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_29696inputs"�
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
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_29714inputs"�
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
&__inference_conv2d_layer_call_fn_29723inputs"�
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
A__inference_conv2d_layer_call_and_return_conditional_losses_29734inputs"�
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
(__inference_conv2d_1_layer_call_fn_29743inputs"�
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
C__inference_conv2d_1_layer_call_and_return_conditional_losses_29754inputs"�
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
(__inference_conv2d_2_layer_call_fn_29763inputs"�
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
C__inference_conv2d_2_layer_call_and_return_conditional_losses_29774inputs"�
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
(__inference_conv2d_3_layer_call_fn_29783inputs"�
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
C__inference_conv2d_3_layer_call_and_return_conditional_losses_29794inputs"�
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
0
�0
�1"
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
6__inference_batch_normalization_11_layer_call_fn_29807inputs"�
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
6__inference_batch_normalization_11_layer_call_fn_29820inputs"�
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
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_29838inputs"�
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
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_29856inputs"�
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
-__inference_max_pooling2d_layer_call_fn_29861inputs"�
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
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_29866inputs"�
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
(__inference_conv2d_4_layer_call_fn_29875inputs"�
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
C__inference_conv2d_4_layer_call_and_return_conditional_losses_29886inputs"�
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
(__inference_conv2d_5_layer_call_fn_29895inputs"�
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
C__inference_conv2d_5_layer_call_and_return_conditional_losses_29906inputs"�
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
(__inference_conv2d_6_layer_call_fn_29915inputs"�
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
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29926inputs"�
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
(__inference_conv2d_7_layer_call_fn_29935inputs"�
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
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29946inputs"�
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
0
�0
�1"
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
5__inference_batch_normalization_1_layer_call_fn_29959inputs"�
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
5__inference_batch_normalization_1_layer_call_fn_29972inputs"�
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
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_29990inputs"�
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
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_30008inputs"�
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
/__inference_max_pooling2d_1_layer_call_fn_30013inputs"�
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
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_30018inputs"�
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
(__inference_conv2d_8_layer_call_fn_30027inputs"�
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
C__inference_conv2d_8_layer_call_and_return_conditional_losses_30038inputs"�
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
(__inference_conv2d_9_layer_call_fn_30047inputs"�
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
C__inference_conv2d_9_layer_call_and_return_conditional_losses_30058inputs"�
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
)__inference_conv2d_10_layer_call_fn_30067inputs"�
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
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30078inputs"�
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
)__inference_conv2d_11_layer_call_fn_30087inputs"�
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
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30098inputs"�
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
0
�0
�1"
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
5__inference_batch_normalization_2_layer_call_fn_30111inputs"�
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
5__inference_batch_normalization_2_layer_call_fn_30124inputs"�
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
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_30142inputs"�
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
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_30160inputs"�
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
/__inference_max_pooling2d_2_layer_call_fn_30165inputs"�
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
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_30170inputs"�
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
)__inference_conv2d_12_layer_call_fn_30179inputs"�
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
D__inference_conv2d_12_layer_call_and_return_conditional_losses_30190inputs"�
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
)__inference_conv2d_13_layer_call_fn_30199inputs"�
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
D__inference_conv2d_13_layer_call_and_return_conditional_losses_30210inputs"�
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
)__inference_conv2d_14_layer_call_fn_30219inputs"�
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
D__inference_conv2d_14_layer_call_and_return_conditional_losses_30230inputs"�
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
)__inference_conv2d_15_layer_call_fn_30239inputs"�
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
D__inference_conv2d_15_layer_call_and_return_conditional_losses_30250inputs"�
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
0
�0
�1"
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
5__inference_batch_normalization_3_layer_call_fn_30263inputs"�
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
5__inference_batch_normalization_3_layer_call_fn_30276inputs"�
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
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_30294inputs"�
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
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_30312inputs"�
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
/__inference_max_pooling2d_3_layer_call_fn_30317inputs"�
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
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_30322inputs"�
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
)__inference_conv2d_16_layer_call_fn_30331inputs"�
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
D__inference_conv2d_16_layer_call_and_return_conditional_losses_30342inputs"�
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
)__inference_conv2d_17_layer_call_fn_30351inputs"�
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
D__inference_conv2d_17_layer_call_and_return_conditional_losses_30362inputs"�
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
)__inference_conv2d_18_layer_call_fn_30371inputs"�
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
D__inference_conv2d_18_layer_call_and_return_conditional_losses_30382inputs"�
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
)__inference_conv2d_19_layer_call_fn_30391inputs"�
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
D__inference_conv2d_19_layer_call_and_return_conditional_losses_30402inputs"�
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
0
�0
�1"
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
5__inference_batch_normalization_4_layer_call_fn_30415inputs"�
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
5__inference_batch_normalization_4_layer_call_fn_30428inputs"�
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
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_30446inputs"�
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
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_30464inputs"�
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
/__inference_max_pooling2d_4_layer_call_fn_30469inputs"�
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
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_30474inputs"�
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
)__inference_conv2d_20_layer_call_fn_30483inputs"�
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
D__inference_conv2d_20_layer_call_and_return_conditional_losses_30494inputs"�
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
)__inference_conv2d_21_layer_call_fn_30503inputs"�
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
D__inference_conv2d_21_layer_call_and_return_conditional_losses_30514inputs"�
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
)__inference_conv2d_22_layer_call_fn_30523inputs"�
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
D__inference_conv2d_22_layer_call_and_return_conditional_losses_30534inputs"�
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
)__inference_conv2d_23_layer_call_fn_30543inputs"�
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
D__inference_conv2d_23_layer_call_and_return_conditional_losses_30554inputs"�
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
0
�0
�1"
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
5__inference_batch_normalization_5_layer_call_fn_30567inputs"�
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
5__inference_batch_normalization_5_layer_call_fn_30580inputs"�
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
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_30598inputs"�
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
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_30616inputs"�
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
/__inference_max_pooling2d_5_layer_call_fn_30621inputs"�
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
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_30626inputs"�
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
'__inference_flatten_layer_call_fn_30631inputs"�
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
B__inference_flatten_layer_call_and_return_conditional_losses_30637inputs"�
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
%__inference_dense_layer_call_fn_30646inputs"�
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
@__inference_dense_layer_call_and_return_conditional_losses_30656inputs"�
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
'__inference_dense_1_layer_call_fn_30665inputs"�
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
B__inference_dense_1_layer_call_and_return_conditional_losses_30675inputs"�
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
'__inference_dense_2_layer_call_fn_30684inputs"�
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
B__inference_dense_2_layer_call_and_return_conditional_losses_30694inputs"�
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
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0:.2SGD/m/new_layer_1/kernel
": 2SGD/m/new_layer_1/bias
0:.2SGD/m/new_layer_2/kernel
": 2SGD/m/new_layer_2/bias
.:,2"SGD/m/batch_normalization_13/gamma
-:+2!SGD/m/batch_normalization_13/beta
0:.2SGD/m/new_layer_3/kernel
": 2SGD/m/new_layer_3/bias
0:.2SGD/m/new_layer_4/kernel
": 2SGD/m/new_layer_4/bias
.:,2"SGD/m/batch_normalization_12/gamma
-:+2!SGD/m/batch_normalization_12/beta
+:)2SGD/m/conv2d/kernel
:2SGD/m/conv2d/bias
-:+2SGD/m/conv2d_1/kernel
:2SGD/m/conv2d_1/bias
-:+2SGD/m/conv2d_2/kernel
:2SGD/m/conv2d_2/bias
-:+2SGD/m/conv2d_3/kernel
:2SGD/m/conv2d_3/bias
.:,2"SGD/m/batch_normalization_11/gamma
-:+2!SGD/m/batch_normalization_11/beta
-:+2SGD/m/conv2d_4/kernel
:2SGD/m/conv2d_4/bias
-:+2SGD/m/conv2d_5/kernel
:2SGD/m/conv2d_5/bias
-:+2SGD/m/conv2d_6/kernel
:2SGD/m/conv2d_6/bias
-:+2SGD/m/conv2d_7/kernel
:2SGD/m/conv2d_7/bias
-:+2!SGD/m/batch_normalization_1/gamma
,:*2 SGD/m/batch_normalization_1/beta
-:+2SGD/m/conv2d_8/kernel
:2SGD/m/conv2d_8/bias
-:+2SGD/m/conv2d_9/kernel
:2SGD/m/conv2d_9/bias
.:,2SGD/m/conv2d_10/kernel
 :2SGD/m/conv2d_10/bias
.:,2SGD/m/conv2d_11/kernel
 :2SGD/m/conv2d_11/bias
-:+2!SGD/m/batch_normalization_2/gamma
,:*2 SGD/m/batch_normalization_2/beta
.:,2SGD/m/conv2d_12/kernel
 :2SGD/m/conv2d_12/bias
.:,2SGD/m/conv2d_13/kernel
 :2SGD/m/conv2d_13/bias
.:,2SGD/m/conv2d_14/kernel
 :2SGD/m/conv2d_14/bias
.:,2SGD/m/conv2d_15/kernel
 :2SGD/m/conv2d_15/bias
-:+2!SGD/m/batch_normalization_3/gamma
,:*2 SGD/m/batch_normalization_3/beta
.:, 2SGD/m/conv2d_16/kernel
 : 2SGD/m/conv2d_16/bias
.:,  2SGD/m/conv2d_17/kernel
 : 2SGD/m/conv2d_17/bias
.:,  2SGD/m/conv2d_18/kernel
 : 2SGD/m/conv2d_18/bias
.:,  2SGD/m/conv2d_19/kernel
 : 2SGD/m/conv2d_19/bias
-:+ 2!SGD/m/batch_normalization_4/gamma
,:* 2 SGD/m/batch_normalization_4/beta
.:, @2SGD/m/conv2d_20/kernel
 :@2SGD/m/conv2d_20/bias
.:,@@2SGD/m/conv2d_21/kernel
 :@2SGD/m/conv2d_21/bias
.:,@@2SGD/m/conv2d_22/kernel
 :@2SGD/m/conv2d_22/bias
.:,@@2SGD/m/conv2d_23/kernel
 :@2SGD/m/conv2d_23/bias
-:+@2!SGD/m/batch_normalization_5/gamma
,:*@2 SGD/m/batch_normalization_5/beta
$:"
� �2SGD/m/dense/kernel
:�2SGD/m/dense/bias
&:$
��2SGD/m/dense_1/kernel
:�2SGD/m/dense_1/bias
%:#	�
2SGD/m/dense_2/kernel
:
2SGD/m/dense_2/bias
�B�
"__inference__update_step_xla_29112gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29117gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29122gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29127gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29132gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29137gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29142gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29147gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29152gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29157gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29162gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29167gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29172gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29177gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29182gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29187gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29192gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29197gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29202gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29207gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29212gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29217gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29222gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29227gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29232gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29237gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29242gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29247gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29252gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29257gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29262gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29267gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29272gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29277gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29282gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29287gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29292gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29297gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29302gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29307gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29312gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29317gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29322gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29327gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29332gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29337gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29342gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29347gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29352gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29357gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29362gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29367gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29372gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29377gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29382gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29387gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29392gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29397gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29402gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29407gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29412gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29417gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29422gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29427gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29432gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29437gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29442gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29447gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29452gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29457gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29462gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29467gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29472gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29477gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29482gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29487gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29492gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
"__inference__update_step_xla_29497gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
"__inference__update_step_xla_29112~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`���Ä�?
� "
 �
"__inference__update_step_xla_29117f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`෾Ä�?
� "
 �
"__inference__update_step_xla_29122~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_29127f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��ں��?
� "
 �
"__inference__update_step_xla_29132f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�򀺄�?
� "
 �
"__inference__update_step_xla_29137f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�Ӏ���?
� "
 �
"__inference__update_step_xla_29142~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`�ں��?
� "
 �
"__inference__update_step_xla_29147f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��̺��?
� "
 �
"__inference__update_step_xla_29152~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��﹄�?
� "
 �
"__inference__update_step_xla_29157f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�﹄�?
� "
 �
"__inference__update_step_xla_29162f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��к��?
� "
 �
"__inference__update_step_xla_29167f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�к��?
� "
 �
"__inference__update_step_xla_29172~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��Ѻ��?
� "
 �
"__inference__update_step_xla_29177f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��к��?
� "
 �
"__inference__update_step_xla_29182~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��Ä�?
� "
 �
"__inference__update_step_xla_29187f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`���Ä�?
� "
 �
"__inference__update_step_xla_29192~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`���?
� "
 �
"__inference__update_step_xla_29197f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��պ��?
� "
 �
"__inference__update_step_xla_29202~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��Ժ��?
� "
 �
"__inference__update_step_xla_29207f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��Ⱥ��?
� "
 �
"__inference__update_step_xla_29212f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�Ⱥ��?
� "
 �
"__inference__update_step_xla_29217f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��ɺ��?
� "
 �
"__inference__update_step_xla_29222~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_29227f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`ि���?
� "
 �
"__inference__update_step_xla_29232~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`௿���?
� "
 �
"__inference__update_step_xla_29237f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_29242~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`�Ǌ���?
� "
 �
"__inference__update_step_xla_29247f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_29252~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��庄�?
� "
 �
"__inference__update_step_xla_29257f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�庄�?
� "
 �
"__inference__update_step_xla_29262f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��庄�?
� "
 �
"__inference__update_step_xla_29267f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��庄�?
� "
 �
"__inference__update_step_xla_29272~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`�Ϛ��?
� "
 �
"__inference__update_step_xla_29277f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�Ϛ��?
� "
 �
"__inference__update_step_xla_29282~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��Ԛ��?
� "
 �
"__inference__update_step_xla_29287f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�Ԛ��?
� "
 �
"__inference__update_step_xla_29292~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��՚��?
� "
 �
"__inference__update_step_xla_29297f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��՚��?
� "
 �
"__inference__update_step_xla_29302~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��՚��?
� "
 �
"__inference__update_step_xla_29307f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��ؚ��?
� "
 �
"__inference__update_step_xla_29312f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��ؚ��?
� "
 �
"__inference__update_step_xla_29317f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��ٚ��?
� "
 �
"__inference__update_step_xla_29322~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`�ښ��?
� "
 �
"__inference__update_step_xla_29327f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��ښ��?
� "
 �
"__inference__update_step_xla_29332~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��ۚ��?
� "
 �
"__inference__update_step_xla_29337f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�ۚ��?
� "
 �
"__inference__update_step_xla_29342~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��ޚ��?
� "
 �
"__inference__update_step_xla_29347f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��ޚ��?
� "
 �
"__inference__update_step_xla_29352~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��ߚ��?
� "
 �
"__inference__update_step_xla_29357f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�ߚ��?
� "
 �
"__inference__update_step_xla_29362f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_29367f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�⚄�?
� "
 �
"__inference__update_step_xla_29372~x�u
n�k
!�
gradient 
<�9	%�"
� 
�
p
` VariableSpec 
`�㚄�?
� "
 �
"__inference__update_step_xla_29377f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`�㚄�?
� "
 �
"__inference__update_step_xla_29382~x�u
n�k
!�
gradient  
<�9	%�"
�  
�
p
` VariableSpec 
`�暄�?
� "
 �
"__inference__update_step_xla_29387f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`�暄�?
� "
 �
"__inference__update_step_xla_29392~x�u
n�k
!�
gradient  
<�9	%�"
�  
�
p
` VariableSpec 
`�的�?
� "
 �
"__inference__update_step_xla_29397f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`��暄�?
� "
 �
"__inference__update_step_xla_29402~x�u
n�k
!�
gradient  
<�9	%�"
�  
�
p
` VariableSpec 
`��Ꚅ�?
� "
 �
"__inference__update_step_xla_29407f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`��Ꚅ�?
� "
 �
"__inference__update_step_xla_29412f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`��뚄�?
� "
 �
"__inference__update_step_xla_29417f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`��Ꚅ�?
� "
 �
"__inference__update_step_xla_29422~x�u
n�k
!�
gradient @
<�9	%�"
� @
�
p
` VariableSpec 
`���?
� "
 �
"__inference__update_step_xla_29427f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`���?
� "
 �
"__inference__update_step_xla_29432~x�u
n�k
!�
gradient@@
<�9	%�"
�@@
�
p
` VariableSpec 
`���?
� "
 �
"__inference__update_step_xla_29437f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`���?
� "
 �
"__inference__update_step_xla_29442~x�u
n�k
!�
gradient@@
<�9	%�"
�@@
�
p
` VariableSpec 
`���?
� "
 �
"__inference__update_step_xla_29447f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`���?
� "
 �
"__inference__update_step_xla_29452~x�u
n�k
!�
gradient@@
<�9	%�"
�@@
�
p
` VariableSpec 
`���?
� "
 �
"__inference__update_step_xla_29457f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`����?
� "
 �
"__inference__update_step_xla_29462f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_29467f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_29472rl�i
b�_
�
gradient
� �
6�3	�
�
� �
�
p
` VariableSpec 
`�����?
� "
 �
"__inference__update_step_xla_29477hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_29482rl�i
b�_
�
gradient
��
6�3	�
�
��
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_29487hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����?
� "
 �
"__inference__update_step_xla_29492pj�g
`�]
�
gradient	�

5�2	�
�	�

�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_29497f`�]
V�S
�
gradient

0�-	�
�

�
p
` VariableSpec 
`������?
� "
 �
 __inference__wrapped_model_26850��GHQR\]^_ghqr|}~������������������������������������������������������������������������������B�?
8�5
3�0
rescaling_input�����������
� "1�.
,
dense_2!�
dense_2���������
�
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_29838�����Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_29856�����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_11_layer_call_fn_29807�����Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_11_layer_call_fn_29820�����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_29696�|}~Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_29714�|}~Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_12_layer_call_fn_29665�|}~Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_12_layer_call_fn_29678�|}~Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_29594�\]^_Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_29612�\]^_Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_13_layer_call_fn_29563�\]^_Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_13_layer_call_fn_29576�\]^_Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_29990�����Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_30008�����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
5__inference_batch_normalization_1_layer_call_fn_29959�����Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
5__inference_batch_normalization_1_layer_call_fn_29972�����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_30142�����Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_30160�����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
5__inference_batch_normalization_2_layer_call_fn_30111�����Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
5__inference_batch_normalization_2_layer_call_fn_30124�����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_30294�����Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_30312�����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
5__inference_batch_normalization_3_layer_call_fn_30263�����Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
5__inference_batch_normalization_3_layer_call_fn_30276�����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_30446�����Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_30464�����Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
5__inference_batch_normalization_4_layer_call_fn_30415�����Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� ";�8
unknown+��������������������������� �
5__inference_batch_normalization_4_layer_call_fn_30428�����Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� ";�8
unknown+��������������������������� �
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_30598�����Q�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_30616�����Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
5__inference_batch_normalization_5_layer_call_fn_30567�����Q�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
5__inference_batch_normalization_5_layer_call_fn_30580�����Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30078y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
)__inference_conv2d_10_layer_call_fn_30067n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30098y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
)__inference_conv2d_11_layer_call_fn_30087n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
D__inference_conv2d_12_layer_call_and_return_conditional_losses_30190u��7�4
-�*
(�%
inputs���������@@
� "4�1
*�'
tensor_0���������@@
� �
)__inference_conv2d_12_layer_call_fn_30179j��7�4
-�*
(�%
inputs���������@@
� ")�&
unknown���������@@�
D__inference_conv2d_13_layer_call_and_return_conditional_losses_30210u��7�4
-�*
(�%
inputs���������@@
� "4�1
*�'
tensor_0���������@@
� �
)__inference_conv2d_13_layer_call_fn_30199j��7�4
-�*
(�%
inputs���������@@
� ")�&
unknown���������@@�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_30230u��7�4
-�*
(�%
inputs���������@@
� "4�1
*�'
tensor_0���������@@
� �
)__inference_conv2d_14_layer_call_fn_30219j��7�4
-�*
(�%
inputs���������@@
� ")�&
unknown���������@@�
D__inference_conv2d_15_layer_call_and_return_conditional_losses_30250u��7�4
-�*
(�%
inputs���������@@
� "4�1
*�'
tensor_0���������@@
� �
)__inference_conv2d_15_layer_call_fn_30239j��7�4
-�*
(�%
inputs���������@@
� ")�&
unknown���������@@�
D__inference_conv2d_16_layer_call_and_return_conditional_losses_30342u��7�4
-�*
(�%
inputs���������  
� "4�1
*�'
tensor_0���������   
� �
)__inference_conv2d_16_layer_call_fn_30331j��7�4
-�*
(�%
inputs���������  
� ")�&
unknown���������   �
D__inference_conv2d_17_layer_call_and_return_conditional_losses_30362u��7�4
-�*
(�%
inputs���������   
� "4�1
*�'
tensor_0���������   
� �
)__inference_conv2d_17_layer_call_fn_30351j��7�4
-�*
(�%
inputs���������   
� ")�&
unknown���������   �
D__inference_conv2d_18_layer_call_and_return_conditional_losses_30382u��7�4
-�*
(�%
inputs���������   
� "4�1
*�'
tensor_0���������   
� �
)__inference_conv2d_18_layer_call_fn_30371j��7�4
-�*
(�%
inputs���������   
� ")�&
unknown���������   �
D__inference_conv2d_19_layer_call_and_return_conditional_losses_30402u��7�4
-�*
(�%
inputs���������   
� "4�1
*�'
tensor_0���������   
� �
)__inference_conv2d_19_layer_call_fn_30391j��7�4
-�*
(�%
inputs���������   
� ")�&
unknown���������   �
C__inference_conv2d_1_layer_call_and_return_conditional_losses_29754y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
(__inference_conv2d_1_layer_call_fn_29743n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
D__inference_conv2d_20_layer_call_and_return_conditional_losses_30494u��7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0���������@
� �
)__inference_conv2d_20_layer_call_fn_30483j��7�4
-�*
(�%
inputs��������� 
� ")�&
unknown���������@�
D__inference_conv2d_21_layer_call_and_return_conditional_losses_30514u��7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
)__inference_conv2d_21_layer_call_fn_30503j��7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
D__inference_conv2d_22_layer_call_and_return_conditional_losses_30534u��7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
)__inference_conv2d_22_layer_call_fn_30523j��7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
D__inference_conv2d_23_layer_call_and_return_conditional_losses_30554u��7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
)__inference_conv2d_23_layer_call_fn_30543j��7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_29774y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
(__inference_conv2d_2_layer_call_fn_29763n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
C__inference_conv2d_3_layer_call_and_return_conditional_losses_29794y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
(__inference_conv2d_3_layer_call_fn_29783n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
C__inference_conv2d_4_layer_call_and_return_conditional_losses_29886y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
(__inference_conv2d_4_layer_call_fn_29875n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
C__inference_conv2d_5_layer_call_and_return_conditional_losses_29906y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
(__inference_conv2d_5_layer_call_fn_29895n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29926y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
(__inference_conv2d_6_layer_call_fn_29915n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29946y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
(__inference_conv2d_7_layer_call_fn_29935n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
C__inference_conv2d_8_layer_call_and_return_conditional_losses_30038y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
(__inference_conv2d_8_layer_call_fn_30027n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
C__inference_conv2d_9_layer_call_and_return_conditional_losses_30058y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
(__inference_conv2d_9_layer_call_fn_30047n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
A__inference_conv2d_layer_call_and_return_conditional_losses_29734y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
&__inference_conv2d_layer_call_fn_29723n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
B__inference_dense_1_layer_call_and_return_conditional_losses_30675g��0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
'__inference_dense_1_layer_call_fn_30665\��0�-
&�#
!�
inputs����������
� ""�
unknown�����������
B__inference_dense_2_layer_call_and_return_conditional_losses_30694f��0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������

� �
'__inference_dense_2_layer_call_fn_30684[��0�-
&�#
!�
inputs����������
� "!�
unknown���������
�
@__inference_dense_layer_call_and_return_conditional_losses_30656g��0�-
&�#
!�
inputs���������� 
� "-�*
#� 
tensor_0����������
� �
%__inference_dense_layer_call_fn_30646\��0�-
&�#
!�
inputs���������� 
� ""�
unknown�����������
B__inference_flatten_layer_call_and_return_conditional_losses_30637h7�4
-�*
(�%
inputs���������@
� "-�*
#� 
tensor_0���������� 
� �
'__inference_flatten_layer_call_fn_30631]7�4
-�*
(�%
inputs���������@
� ""�
unknown���������� �
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_30018�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_1_layer_call_fn_30013�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_30170�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_2_layer_call_fn_30165�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_30322�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_3_layer_call_fn_30317�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_30474�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_4_layer_call_fn_30469�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_30626�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_5_layer_call_fn_30621�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_29866�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
-__inference_max_pooling2d_layer_call_fn_29861�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
F__inference_new_layer_1_layer_call_and_return_conditional_losses_29530wGH9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
+__inference_new_layer_1_layer_call_fn_29519lGH9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
F__inference_new_layer_2_layer_call_and_return_conditional_losses_29550wQR9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
+__inference_new_layer_2_layer_call_fn_29539lQR9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
F__inference_new_layer_3_layer_call_and_return_conditional_losses_29632wgh9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
+__inference_new_layer_3_layer_call_fn_29621lgh9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
F__inference_new_layer_4_layer_call_and_return_conditional_losses_29652wqr9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
+__inference_new_layer_4_layer_call_fn_29641lqr9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
D__inference_rescaling_layer_call_and_return_conditional_losses_29510s9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
)__inference_rescaling_layer_call_fn_29502h9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
E__inference_sequential_layer_call_and_return_conditional_losses_27997��GHQR\]^_ghqr|}~������������������������������������������������������������������������������J�G
@�=
3�0
rescaling_input�����������
p

 
� ",�)
"�
tensor_0���������

� �
E__inference_sequential_layer_call_and_return_conditional_losses_28236��GHQR\]^_ghqr|}~������������������������������������������������������������������������������J�G
@�=
3�0
rescaling_input�����������
p 

 
� ",�)
"�
tensor_0���������

� �
*__inference_sequential_layer_call_fn_28429��GHQR\]^_ghqr|}~������������������������������������������������������������������������������J�G
@�=
3�0
rescaling_input�����������
p

 
� "!�
unknown���������
�
*__inference_sequential_layer_call_fn_28622��GHQR\]^_ghqr|}~������������������������������������������������������������������������������J�G
@�=
3�0
rescaling_input�����������
p 

 
� "!�
unknown���������
�
#__inference_signature_wrapper_29107��GHQR\]^_ghqr|}~������������������������������������������������������������������������������U�R
� 
K�H
F
rescaling_input3�0
rescaling_input�����������"1�.
,
dense_2!�
dense_2���������
