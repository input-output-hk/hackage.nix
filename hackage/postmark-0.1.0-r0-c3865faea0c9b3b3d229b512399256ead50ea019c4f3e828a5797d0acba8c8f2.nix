{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      small_base = true;
      demo = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "postmark";
        version = "0.1.0";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.text)
          (hsPkgs.network-api-support)
        ];
      };
      exes = {
        "postmark-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.postmark)
            (hsPkgs.text)
          ];
        };
      };
    };
  }