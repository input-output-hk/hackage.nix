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
      specVersion = "2.2";
      identifier = { name = "rdf4h-vocab-activitystreams"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2024, Patrick M. Niedzielski.";
      maintainer = "Patrick M. Niedzielski <patrick@pniedzielski.net>";
      author = "Patrick M. Niedzielski";
      homepage = "https://github.com/pniedzielski/rdf4h-vocab-activitystreams#readme";
      url = "";
      synopsis = "The ActivityStreams 2 RDF vocabulary for rdf4h.";
      description = "ActivityStreams 2.0 is a vocabulary for decentralized social media activities standardized by the W3C.  This package imports that vocabulary into a format useable with the rdf4h package.\nSee the README for more information: <https://github.com/pniedzielski/rdf4h-vocab-activitystreams#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rdf4h" or (errorHandler.buildDepError "rdf4h"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }