{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "wai-lens";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Richard Wallace";
      maintainer = "rwallace@thewallacepack.net";
      author = "Richard Wallace";
      homepage = "https://github.com/webcrank/wai-lens";
      url = "";
      synopsis = "Lenses for WAI";
      description = "Lenses for WAI";
      buildType = "Simple";
    };
    components = {
      "wai-lens" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.vault)
          (hsPkgs.wai)
        ];
      };
    };
  }