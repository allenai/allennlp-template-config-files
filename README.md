# AllenNLP Template Project using Config Files

A template for starting a new allennlp project using config files and `allennlp train`.  For simple
projects, all you need to do is get your model code into the class in `my_project/model.py`, your
data loading code into the `DatasetReader` code in `my_project/dataset_reader.py`, and that's it,
you can train a model (we recommend also making appropriate changes to the test code, and using that
for development, but that's optional).

See the [AllenNLP Guide](https://guide.allennlp.org/your-first-model) for a quick start on how to
use what's in this example project.  We're grabbing the model and dataset reader classes from that
guide.  You can replace those classes with a model and dataset reader for whatever you want
(including copying code from our [model library](https://github.com/allenai/allennlp-models) as a
starting point). The very brief version of what's in here:

* A `Model` class in `my_project/model.py`.
* A `DatasetReader` class in `my_project/dataset_reader.py`.
* Tests for both of these classes in `tests`, including a small toy dataset that can be read.  We
  strongly recommend that you use a toy dataset with tests like this during model development, for
  quick debug cycles. To run the tests, just run `pytest` from the base directory of this project.
* An `.allennlp_plugins` file, which makes it easier to use `allennlp train` with this project.  If
  you change the name of `my_project`, you should also change the line in this file to match.
* An example configuration file for training the model, which you would use with the following shell
  command from the base directory of this repository, after `pip install allennlp`:

    allennlp train -s /dir/to/save/results training_config/my_model_trained_on_my_dataset.json
