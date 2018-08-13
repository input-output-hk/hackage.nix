{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      transformers_02 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "authenticate";
        version = "0.6.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/authenticate/tree/master";
      url = "";
      synopsis = "Authentication methods for Haskell web applications.";
      description = "Focus is on remote authentication methods, such as OpenID,\nrpxnow and Google.";
      buildType = "Simple";
    };
    components = {
      "authenticate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.json)
          (hsPkgs.http-wget)
          (hsPkgs.tagsoup)
          (hsPkgs.failure)
          (hsPkgs.safe-failure)
          (hsPkgs.syb)
        ] ++ [ (hsPkgs.transformers) ];
      };
    };
  }