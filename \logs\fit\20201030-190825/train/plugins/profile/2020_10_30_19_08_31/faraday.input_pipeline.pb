	|��S:@|��S:@!|��S:@	��f��	@��f��	@!��f��	@"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$|��S:@���g��?AE�ӻx�
@Yh����[�?*	sh��|�j@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatіs)�*�?!�)��tA@)c�dU���?1�ȃ��:@:Preprocessing2F
Iterator::Model�_ѭװ?!�櫲��>@)���+�?1�#��\04@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatei�"�~�?!��A�=N6@)�,�뇘?13�Pg�V&@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�:TS�u�?!f@3��E&@)�:TS�u�?1f@3��E&@:Preprocessing2U
Iterator::Model::ParallelMapV2�7>[�?!x��wg�$@)�7>[�?1x��wg�$@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor|���s�?!��㔶!@)|���s�?1��㔶!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�rJ_�?!LU��TQ@)�r���?1}�_�; @:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap���QI�?!}�	-�:@)�ҥI*�?1��O��s@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 4.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no9��f��	@>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	���g��?���g��?!���g��?      ��!       "      ��!       *      ��!       2	E�ӻx�
@E�ӻx�
@!E�ӻx�
@:      ��!       B      ��!       J	h����[�?h����[�?!h����[�?R      ��!       Z	h����[�?h����[�?!h����[�?JCPU_ONLYY��f��	@b 