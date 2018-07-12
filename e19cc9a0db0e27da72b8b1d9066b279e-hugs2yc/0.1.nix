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
          name = "hugs2yc";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2008, Dmitry Golubovsky and The Yhc Team";
        maintainer = "golubovsky@gmail.com";
        author = "Dmitry Golubovsky";
        homepage = "http://www.haskell.org/haskellwiki/Yhc";
        url = "";
        synopsis = "Hugs Front-end to Yhc Core.";
        description = "A converter of Hugs Core output to Yhc Core format for further conversion by a back-end.";
        buildType = "Simple";
      };
      components = {
        "hugs2yc" = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.uniplate
            hsPkgs.yhccore
            hsPkgs.ycextra
            hsPkgs.parsec
            hsPkgs.directory
            hsPkgs.filepath
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
            ]
            else [
              hsPkgs.base
              hsPkgs.mtl
            ]);
        };
      };
    }