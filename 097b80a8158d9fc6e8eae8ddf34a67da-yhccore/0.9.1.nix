{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "yhccore";
          version = "0.9.1";
        };
        license = "BSD-3-Clause";
        copyright = "2006-8, Neil Mitchell and The Yhc Team";
        maintainer = "ndmitchell@gmail.com";
        author = "Neil Mitchell";
        homepage = "http://www.haskell.org/haskellwiki/Yhc";
        url = "";
        synopsis = "Yhc's Internal Core language.";
        description = "A minimal Core language to which Haskell can be reduced,\nimplemented in the Yhc compiler.";
        buildType = "Simple";
      };
      components = {
        "yhccore" = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.uniplate
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.containers
            ]
            else [
              hsPkgs.base
              hsPkgs.mtl
            ]);
        };
      };
    }