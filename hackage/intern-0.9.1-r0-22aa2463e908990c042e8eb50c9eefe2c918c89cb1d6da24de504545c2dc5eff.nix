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
      identifier = { name = "intern"; version = "0.9.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/intern/";
      url = "";
      synopsis = "Efficient hash-consing for arbitrary data types";
      description = "Changes from 0.8 to 0.9\n\n* Removed 'identity' from the Interned class, to support applications where the identity is obtained by other means (e.g. a unique Ptr value)\n\nChanges from 0.7 to 0.8\n\n* Disabled cache removal as it was causing problems on large data sets. There is no good way to ensure that both references remain alive long enough to finish comparisons.\n* Switched to IORef from MVar\n\nChanges from 0.6 to 0.7\n\n* Fixed problem where comparisons could happen between data structures while one was still a thunk, leading to equal structures comparing as inequal in limited circumstances, by appropriately using strictness annotations.\n\nEfficient hash-consing for arbitrary data types\n\nChanges from 0.5.2 to 0.6\n\n* Widened the caches so they don't go through a single MVar per type. This has made a dramatic impact on performance. However, this broke the previous invariant that newer entries always had higher Ids than older entries.\n\nChanges from 0.5.1 to 0.5.2\n\n* Added Data.Interned.IntSet";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }