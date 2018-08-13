{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
      demo = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "postmark";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Mark Hibberd";
      maintainer = "Mark Hibberd <mark@hibberd.id.au>";
      author = "Mark Hibberd <mark@hibberd.id.au>";
      homepage = "https://github.com/apiengine/postmark";
      url = "";
      synopsis = "Library for postmarkapp.com HTTP Api";
      description = "postmark";
      buildType = "Simple";
    };
    components = {
      "postmark" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.network-api-support)
          (hsPkgs.http-client-tls)
        ];
      };
      exes = {
        "postmark-demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.postmark)
            (hsPkgs.text)
          ];
        };
      };
    };
  }