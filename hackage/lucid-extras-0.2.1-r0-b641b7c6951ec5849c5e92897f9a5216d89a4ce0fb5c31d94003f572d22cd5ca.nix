{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lucid-extras"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Marco Zocca <ocramz fripost org>";
      author = "Tom Nielsen <tanielsen@gmail.com>";
      homepage = "https://github.com/diffusionkinetics/open/lucid-extras";
      url = "";
      synopsis = "Generate more HTML with Lucid";
      description = "Generate more HTML with Lucid - Bootstrap, Rdash, Vega-Lite, Email.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.lucid)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          ];
        };
      tests = {
        "site-gen" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.lucid-extras)
            (hsPkgs.lucid)
            ];
          };
        };
      };
    }