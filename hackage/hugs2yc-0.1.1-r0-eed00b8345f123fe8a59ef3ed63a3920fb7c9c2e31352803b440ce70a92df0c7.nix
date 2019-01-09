{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hugs2yc"; version = "0.1.1"; };
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
      "library" = {
        depends = [
          (hsPkgs.mtl)
          (hsPkgs.uniplate)
          (hsPkgs.yhccore)
          (hsPkgs.ycextra)
          (hsPkgs.parsec)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          ] ++ (if flags.splitbase
          then [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.containers) ]
          else [ (hsPkgs.base) (hsPkgs.mtl) ]);
        };
      };
    }