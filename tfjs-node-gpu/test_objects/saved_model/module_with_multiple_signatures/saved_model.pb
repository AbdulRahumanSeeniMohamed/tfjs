�]
��
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
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
executor_typestring �
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�"serve*2.0.0-beta12v2.0.0-beta0-16-g1d91213fe78�K
d
VariableVarHandleOp*
dtype0*
_output_shapes
: *
shape: *
shared_name
Variable
z
Variable/Read/ReadVariableOpReadVariableOpVariable*
_class
loc:@Variable*
dtype0*
_output_shapes
: 
h

Variable_1VarHandleOp*
dtype0*
_output_shapes
: *
shape: *
shared_name
Variable_1
�
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_class
loc:@Variable_1*
dtype0*
_output_shapes
: 

NoOpNoOp
�
ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *�
value�B� B�
 
v
two

signatures
:8
VARIABLE_VALUEVariablev/.ATTRIBUTES/VARIABLE_VALUE
><
VARIABLE_VALUE
Variable_1two/.ATTRIBUTES/VARIABLE_VALUE
 
R
serving_default_xPlaceholder*
dtype0*
_output_shapes
: *
shape: 
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_xVariable*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*
_output_shapes
: *)
f$R"
 __inference_signature_wrapper_32
K

timestwo_xPlaceholder*
dtype0*
_output_shapes
: *
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCall
timestwo_x
Variable_1*)
f$R"
 __inference_signature_wrapper_52*
Tout
2**
config_proto

CPU

GPU 2J 8*
_output_shapes
: *
Tin
2
O
saver_filenamePlaceholder*
dtype0*
_output_shapes
: *
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpConst**
config_proto

CPU

GPU 2J 8*
Tin
2*
_output_shapes
: *)
_gradient_op_typePartitionedCall-94*$
fR
__inference__traced_save_93*
Tout
2
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable
Variable_1*
Tin
2*
_output_shapes
: **
_gradient_op_typePartitionedCall-113*(
f#R!
__inference__traced_restore_112*
Tout
2**
config_proto

CPU

GPU 2J 8�;
�
�
__inference__traced_restore_112
file_prefix
assignvariableop_variable!
assignvariableop_1_variable_1

identity_3��AssignVariableOp�AssignVariableOp_1�	RestoreV2�RestoreV2_1�
RestoreV2/tensor_namesConst"/device:CPU:0*Q
valueHBFBv/.ATTRIBUTES/VARIABLE_VALUEBtwo/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:t
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes

::*
dtypes
2L
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:u
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0*
dtype0*
_output_shapes
 N

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:}
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_1Identity_1:output:0*
dtype0*
_output_shapes
 �
RestoreV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:�
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
dtypes
2*
_output_shapes
:1
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_2Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^NoOp"/device:CPU:0*
T0*
_output_shapes
: �

Identity_3IdentityIdentity_2:output:0^AssignVariableOp^AssignVariableOp_1
^RestoreV2^RestoreV2_1*
_output_shapes
: *
T0"!

identity_3Identity_3:output:0*
_input_shapes

: ::2
RestoreV2_1RestoreV2_12$
AssignVariableOpAssignVariableOp2
	RestoreV2	RestoreV22(
AssignVariableOp_1AssignVariableOp_1: :+ '
%
_user_specified_namefile_prefix: 
�
x
 __inference_signature_wrapper_52
x"
statefulpartitionedcall_args_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxstatefulpartitionedcall_args_1**
config_proto

CPU

GPU 2J 8*
Tin
2*
_output_shapes
: *)
_gradient_op_typePartitionedCall-48* 
fR
__inference_timestwo_42*
Tout
2q
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
: :22
StatefulPartitionedCallStatefulPartitionedCall: :! 

_user_specified_namex
�
g
__inference_timestwo_42
x
mul_readvariableop_resource
identity��mul/ReadVariableOp�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: J
mulMulxmul/ReadVariableOp:value:0*
T0*
_output_shapes
: S
IdentityIdentitymul:z:0^mul/ReadVariableOp*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
: :2(
mul/ReadVariableOpmul/ReadVariableOp:! 

_user_specified_namex: 
�
W
__inference_mutate_59	
new_v
assignvariableop_resource��AssignVariableOpi
AssignVariableOpAssignVariableOpassignvariableop_resourcenew_v*
dtype0*
_output_shapes
 *
_input_shapes
: :2$
AssignVariableOpAssignVariableOp: :% !

_user_specified_namenew_v
�
g
__inference___call___22
x
mul_readvariableop_resource
identity��mul/ReadVariableOp�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: J
mulMulxmul/ReadVariableOp:value:0*
_output_shapes
: *
T0S
IdentityIdentitymul:z:0^mul/ReadVariableOp*
_output_shapes
: *
T0"
identityIdentity:output:0*
_input_shapes
: :2(
mul/ReadVariableOpmul/ReadVariableOp:! 

_user_specified_namex: 
�
x
 __inference_signature_wrapper_32
x"
statefulpartitionedcall_args_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxstatefulpartitionedcall_args_1*)
_gradient_op_typePartitionedCall-28* 
fR
__inference___call___22*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*
_output_shapes
: q
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
: :22
StatefulPartitionedCallStatefulPartitionedCall:! 

_user_specified_namex: 
�
�
__inference__traced_save_93
file_prefix'
#savev2_variable_read_readvariableop)
%savev2_variable_1_read_readvariableop
savev2_1_const

identity_1��MergeV2Checkpoints�SaveV2�SaveV2_1�
StringJoin/inputs_1Const"/device:CPU:0*<
value3B1 B+_temp_6a12a5e3c4524b18b7e217e4ccdbdf98/part*
dtype0*
_output_shapes
: s

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: L

num_shardsConst*
dtype0*
_output_shapes
: *
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*Q
valueHBFBv/.ATTRIBUTES/VARIABLE_VALUEBtwo/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:q
SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop"/device:CPU:0*
_output_shapes
 *
dtypes
2h
ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: �
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHq
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:�
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
dtypes
2*
_output_shapes
 �
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
T0*
N*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0s

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes

: : : : 2
SaveV2SaveV22(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2_1SaveV2_1:+ '
%
_user_specified_namefile_prefix: : : "7L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*p
timestwod

x
timestwo_x:0 -
output_0!
StatefulPartitionedCall_1:0 tensorflow/serving/predict*|
serving_defaulti

x
serving_default_x:0 +
output_0
StatefulPartitionedCall:0 tensorflow/serving/predict*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:�

f
v
two

signatures
__call__

mutate
timestwo"
_generic_user_object
: 2Variable
: 2Variable
:
serving_default
timestwo"
signature_map
�2�
__inference___call___22�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�2�
__inference_mutate_59�
���
FullArgSpec
args�
jself
jnew_v
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�2�
__inference_timestwo_42�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
)B'
 __inference_signature_wrapper_32x
)B'
 __inference_signature_wrapper_52x?
__inference_mutate_59&�
�
�
new_v 
� "
 B
__inference_timestwo_42'�
�

�
x 
� "� k
 __inference_signature_wrapper_32G�
� 
�

x
�
x ""�

output_0�
output_0 B
__inference___call___22'�
�

�
x 
� "� k
 __inference_signature_wrapper_52G�
� 
�

x
�
x ""�

output_0�
output_0 