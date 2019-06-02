{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "ribosome-test"; version = "0.3.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2019 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/ribosome-hs#readme";
      url = "";
      synopsis = "test helpers for ribosome";
      description = "Please see the README on GitHub at <https://github.com/tek/ribosome-hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HTF)
          (hsPkgs.base-noprelude)
          (hsPkgs.bytestring)
          (hsPkgs.chiasma)
          (hsPkgs.cornea)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.free)
          (hsPkgs.hslogger)
          (hsPkgs.lifted-base)
          (hsPkgs.messagepack)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.nvim-hs)
          (hsPkgs.process)
          (hsPkgs.relude)
          (hsPkgs.resourcet)
          (hsPkgs.ribosome)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.typed-process)
          (hsPkgs.unix)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
          ];
        };
      };
    }