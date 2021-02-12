from my_project.dataset_reader import ClassificationTsvReader


class TestTextClassificationJsonReader:
    def test_read_from_file_ag_news_corpus_and_truncates_properly(self):
        reader = ClassificationTsvReader()
        data_path = "tests/fixtures/toy_data.tsv"
        instances = list(reader.read(data_path))

        assert len(instances) == 2

        fields = instances[0].fields
        expected_tokens = ["it", "is", "movies", "like", "these"]
        assert [t.text for t in fields["text"].tokens][:5] == expected_tokens
        assert fields["label"].label == "neg"

        fields = instances[1].fields
        expected_tokens = ["the", "music", "is", "well-chosen", "and"]
        assert [t.text for t in fields["text"].tokens][:5] == expected_tokens
        assert fields["label"].label == "pos"
