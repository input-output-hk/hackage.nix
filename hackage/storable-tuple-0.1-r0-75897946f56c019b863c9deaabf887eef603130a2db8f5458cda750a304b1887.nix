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
    flags = { splitbase = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "storable-tuple"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <storable@henning-thielemann.de>";
      author = "Henning Thielemann <storable@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/storable-tuple/";
      url = "";
      synopsis = "Storable instance for pairs and triples";
      description = "Provides a Storable instance for pair and triple\nwhich should be binary compatible with C99 and C++.\nThe only purpose of this package is to provide a standard location\nfor this instance so that other packages needing this instance\ncan play nicely together.\nNote however, that the original purpose of the @Storable@ class\nwas the transfer of primitive types between Haskell and foreign code.\nThis purpose was already extended by HSC,\nwhich creates @Storable@ instances for records from C header files.\nNonetheless,\n@Storable@ instances for tuples were omitted from @base@ by intention.\nInstead of using the orphan instances from this package,\nyou may instead use the custom class or the wrapper type\nfrom the module @Foreign.Storable.Record.Tuple@\nfrom the package @storable-record@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
        ] ++ (if flags.splitbase
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."special-functors" or (errorHandler.buildDepError "special-functors"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]);
        buildable = true;
      };
    };
  }