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
      specVersion = "1.6";
      identifier = { name = "detrospector"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Markov chain text generator";
      description = "The `detrospector' program generates random text conforming to the general\nstyle and diction of a given source document.  It associates each\n`k'-character substring of the source document with a probability\ndistribution for the next character.  These distributions are used to\niteratively pick new characters for output.  In other words, it samples a\nMarkov chain derived from the source document.\n\nRun `detrospector' `-?' for usage information.  The program has several\nmodes.  It can generate random text, or invent individual random words which\nare not found in a dictionary.  These modes require a chain file, which is\nbuilt from a source document in another mode.\n\nDesign goals include speed and full Unicode support.  I welcome suggestions\nand patches regarding any aspect of this program.\n\nNew in version 0.2:\n\n* Use the @unordered-containers@ library instead of @hashmap@.  Also fixes\na build failure.\n\n* Accept @-h@ for help, in addition to @-?@.\n\n* Added public GitHub repository.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "detrospector" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }