{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "webcrank-wai";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Richard Wallace";
      maintainer = "Richard Wallace <rwallace@thewallacepack.net>";
      author = "Richard Wallace <rwallace@thewallacepack.net>";
      homepage = "https://github.com/webcrank/webcrank-wai";
      url = "";
      synopsis = "Build a WAI Application from Webcrank Resources";
      description = "Build a WAI Application from Webcrank Resources.";
      buildType = "Simple";
    };
    components = {
      "webcrank-wai" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.unix-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
          (hsPkgs.wai-lens)
          (hsPkgs.webcrank)
          (hsPkgs.webcrank-dispatch)
        ];
      };
    };
  }