?a
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68?M
d
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
h

Variable_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_1
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
l
save_counterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namesave_counter
e
 save_counter/Read/ReadVariableOpReadVariableOpsave_counter*
_output_shapes
: *
dtype0	

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
=
v1
v2
save_counter
f

signatures*
?9
VARIABLE_VALUEVariablev1/.ATTRIBUTES/VARIABLE_VALUE*
A;
VARIABLE_VALUE
Variable_1v2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEsave_counter'save_counter/.ATTRIBUTES/VARIABLE_VALUE*
* 

serving_default* 
* 
b
serving_default_xPlaceholder*
_output_shapes

:*
dtype0*
shape
:
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_xVariable
Variable_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_11564
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOp save_counter/Read/ReadVariableOpConst*
Tin	
2	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_11609
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable
Variable_1save_counter*
Tin
2*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_11628?;
?
?
!__inference__traced_restore_11628
file_prefix#
assignvariableop_variable: '
assignvariableop_1_variable_1: )
assignvariableop_2_save_counter:	 

identity_4??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Bv1/.ATTRIBUTES/VARIABLE_VALUEBv2/.ATTRIBUTES/VARIABLE_VALUEB'save_counter/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHx
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*$
_output_shapes
::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_save_counterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	1
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_3Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_4IdentityIdentity_3:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*
_input_shapes

: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
__inference__traced_save_11609
file_prefix'
#savev2_variable_read_readvariableop)
%savev2_variable_1_read_readvariableop+
'savev2_save_counter_read_readvariableop	
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Bv1/.ATTRIBUTES/VARIABLE_VALUEBv2/.ATTRIBUTES/VARIABLE_VALUEB'save_counter/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHu
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop'savev2_save_counter_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
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

identity_1Identity_1:output:0*
_input_shapes

: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

#__inference_signature_wrapper_11564
x
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_11553f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 22
StatefulPartitionedCallStatefulPartitionedCall:A =

_output_shapes

:

_user_specified_namex
?
?
__inference_<lambda>_11553
x!
readvariableop_resource: %
mul_readvariableop_resource: 
identity??ReadVariableOp?mul/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
: *
dtype0_
mulMulReadVariableOp:value:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
: A
mul_1Mulmul:z:0x*
T0*
_output_shapes

:O
IdentityIdentity	mul_1:z:0^NoOp*
T0*
_output_shapes

:l
NoOpNoOp^ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 2 
ReadVariableOpReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:A =

_output_shapes

:

_user_specified_namex
?
?
__inference_<lambda>_11577
x!
readvariableop_resource: %
mul_readvariableop_resource: 
identity??ReadVariableOp?mul/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
: *
dtype0_
mulMulReadVariableOp:value:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
: A
mul_1Mulmul:z:0x*
T0*
_output_shapes

:O
IdentityIdentity	mul_1:z:0^NoOp*
T0*
_output_shapes

:l
NoOpNoOp^ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 2 
ReadVariableOpReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:A =

_output_shapes

:

_user_specified_namex"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_defaulty
&
x!
serving_default_x:03
output_0'
StatefulPartitionedCall:0tensorflow/serving/predict:?
W
v1
v2
save_counter
f

signatures"
_generic_user_object
: 2Variable
: 2Variable
:	 2save_counter
?2?
__inference_<lambda>_11577?
???
FullArgSpec
args?
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
serving_default"
signature_map
?B?
#__inference_signature_wrapper_11564x"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 V
__inference_<lambda>_115778!?
?
?
x
? "?
#__inference_signature_wrapper_11564X&?#
? 
?

x?
x"*?'
%
output_0?
output_0