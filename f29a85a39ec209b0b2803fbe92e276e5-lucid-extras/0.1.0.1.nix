{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lucid-extras";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Tom Nielsen <tanielsen@gmail.com>";
        author = "Tom Nielsen <tanielsen@gmail.com>";
        homepage = "https://github.com/diffusionkinetics/open/lucid-extras";
        url = "";
        synopsis = "Generate more HTML with Lucid";
        description = "Generate more HTML with Lucid - Bootstrap, Rdash and Email.";
        buildType = "Simple";
      };
      components = {
        lucid-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.lucid
            hsPkgs.text
            hsPkgs.blaze-builder
            hsPkgs.bytestring
          ];
        };
        tests = {
          site-gen = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.lucid-extras
              hsPkgs.lucid
            ];
          };
        };
      };
    }