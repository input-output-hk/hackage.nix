{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "qm-interpolated-string";
          version = "0.2.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "Viacheslav Lotsmanov";
        maintainer = "Viacheslav Lotsmanov <lotsmanov89@gmail.com>";
        author = "Viacheslav Lotsmanov";
        homepage = "https://github.com/unclechu/haskell-qm-interpolated-string";
        url = "";
        synopsis = "Implementation of interpolated multiline strings";
        description = "Implementation of interpolated multiline strings\nthat ignores indentation and trailing whitespaces";
        buildType = "Simple";
      };
      components = {
        qm-interpolated-string = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.qm-interpolated-string
            ];
          };
        };
      };
    }