	�`���
@�`���
@!�`���
@	��!��"@��!��"@!��!��"@"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$�`���
@�ܚt["�?A%@M-[�@Y�IӠh�?*	@5^�I�w@2F
Iterator::Model��};��?!�pK�C�P@)�=�$@M�?1N}�GL@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�g]��@�?!���t/0@)*�#��t�?10�V�uB'@:Preprocessing2U
Iterator::Model::ParallelMapV2�-II�?!sg���#@)�-II�?1sg���#@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate�`��>��?!#jz?eh%@)��;jL��?1O:��q@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorGsd嗑?!��i�8@)Gsd嗑?1��i�8@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipX zR&5�?!�i�x�@@)P6�
�r�?1)�OΝ@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�ǵ�b��?!����^@)�ǵ�b��?1����^@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap|~!<ڨ?!�^E���)@))v4���?1��+SU@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is MODERATELY input-bound because 9.3% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.no*high2t16.8 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9��!��"@>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�ܚt["�?�ܚt["�?!�ܚt["�?      ��!       "      ��!       *      ��!       2	%@M-[�@%@M-[�@!%@M-[�@:      ��!       B      ��!       J	�IӠh�?�IӠh�?!�IӠh�?R      ��!       Z	�IӠh�?�IӠh�?!�IӠh�?JCPU_ONLYY��!��"@b 