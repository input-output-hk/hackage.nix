{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
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
      "library" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.uniplate)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.containers)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.mtl)
          ]);
      };
    };
  }