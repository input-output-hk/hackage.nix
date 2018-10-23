{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "libxml";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2006, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libxml2";
      description = "Minimal binding to libxml2. Additional functions will be added when needed.";
      buildType = "Simple";
    };
    components = {
      "libxml" = {
        depends  = [
          (hsPkgs.mtl)
        ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]
          else [ (hsPkgs.base) ]);
        libs = [ (pkgs."xml2") ];
      };
    };
  }