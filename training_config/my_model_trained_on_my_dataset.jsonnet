// For more info on config files generally, see https://guide.allennlp.org/using-config-files
{
    "dataset_reader" : {
        // This name needs to match the name that you used to register your dataset reader, with
        // the call to `@DatasetReader.register()`.
        "type": "classification-tsv",
        // These other parameters exactly match the constructor parameters of your dataset reader class.
        "token_indexers": {
            "tokens": {
                "type": "single_id"
            }
        }
    },
    "train_data_path": "/path/to/your/training/data/here.tsv",
    "validation_data_path": "/path/to/your/validation/data/here.tsv",
    "model": {
        // This name needs to match the name that you used to register your model, with
        // the call to `@Model.register()`.
        "type": "simple_classifier",
        // These other parameters exactly match the constructor parameters of your model class.
        "embedder": {
            "token_embedders": {
                "tokens": {
                    "type": "embedding",
                    "embedding_dim": 10
                }
            }
        },
        "encoder": {
            "type": "bag_of_embeddings",
            "embedding_dim": 10
        }
    },
    "data_loader": {
        // See http://docs.allennlp.org/master/api/data/dataloader/ for more info on acceptable
        // parameters here.
        "batch_size": 8,
        "shuffle": true
    },
    "trainer": {
        // See http://docs.allennlp.org/master/api/training/trainer/#gradientdescenttrainer-objects
        // for more info on acceptable parameters here.
        "optimizer": "adam",
        "num_epochs": 5
    }
    // There are a few other optional parameters that can go at the top level, e.g., to configure
    // vocabulary behavior, to use a separate dataset reader for validation data, or other things.
    // See http://docs.allennlp.org/master/api/commands/train/#from_partial_objects for more info
    // on acceptable parameters.
}
