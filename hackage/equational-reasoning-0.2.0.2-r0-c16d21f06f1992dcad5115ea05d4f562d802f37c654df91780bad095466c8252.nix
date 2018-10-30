{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "equational-reasoning";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Hiromi ISHII 2013-2014";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "Proof assistant for Haskell using DataKinds & PolyKinds";
      description = "A simple convenient library to write equational / preorder proof as in Agda.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.void)
          (hsPkgs.template-haskell)
        ] ++ (if compiler.isGhc && compiler.version.lt "7.8"
          then [
            (hsPkgs.singletons)
            (hsPkgs.tagged)
          ]
          else [ (hsPkgs.singletons) ]);
      };
    };
  }