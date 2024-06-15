{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "shamochu"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 Pierre Le Marre";
      maintainer = "dev@wismill.eu";
      author = "Pierre Le Marre";
      homepage = "https://gitlab.com/Wismill/shamochu";
      url = "";
      synopsis = "“Shuffle and merge overlapping chunks” lossless compression";
      description = "Shamochu is short for “__Sh__uffle __a__nd __m__erge __o__verlapping __chu__nks”\nlossless compression.\n\nThe idea for the compression is:\n\n1. Split the input array in chunks of a given size.\n2. Rearrange the order of the chunks in order to optimize consecutive\n   chunks overlaps.\n3. Create a data table with the reordered chunks and an index table that\n   maps the original chunk index to its offset in the data table.\n\nThen the data can be accessed in \\(\\mathcal{O}(1)\\) via a few bitwise\noperations and indexing two arrays.\n\nThe same operation can then be applied to the index table and may lead to\nfurther compression.\n\nTrivial example (chunk size: 4):\n\n@\n  [1, 2, 3, 4, 2, 3, 4, 5, 0, 1, 2, 3]          # source data\n  -> [[1, 2, 3, 4], [2, 3, 4, 5], [0, 1, 2, 3]] # make chunks\n  -> [[0, 1, 2, 3], [1, 2, 3, 4], [2, 3, 4, 5]] # rearrange to have best overlaps\n  -> {data: [0, 1, 2, 3, 4, 5], offsets: [1, 2, 0]} # overlap chunks & compute\n                                                    # their offsets\n@\n\nThen we can retrieve the data from the original array at index i with the\nfollowing formula:\n\n@\n    mask = (1 << chunk_size) - 1\n    original[i] = data[offsets[i >> chunk_size] + (i & mask)]\n@\n\nSince the index array is itself quite repetitive with the real data, we can\napply the compression a second time to the offsets table.\n\nThe complete algorithm optimizes the chunk sizes for both arrays in order to\nget the lowest total data size. Given the chunks sizes @cs_data@ and\n@cs_offsets@:\n\n1. We compute the corresponding masks:\n\n    * @mask_data = (1 << cs_data) - 1@ and\n    * @mask_offsets = (1 << cs_offsets) - 1@.\n\n2. We can retrieve the original value at index @k@ with the following\n  formula:\n\n@\n    data[\n        offsets1[\n            offsets2[i >> (cs_data + cs_offsets)] +\n            ((i >> cs_data) & mask_offsets)\n        ] +\n        (i & mask_data)\n    ];\n@\n\n== Notes\n\nThis work took inspiration from\n“<https://github.com/apankrat/notes/blob/3c551cb028595fd34046c5761fd12d1692576003/fast-case-conversion/README.md Fast character case conversion… or how to really compress sparse arrays>”\nby Alexander Pankratov.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }