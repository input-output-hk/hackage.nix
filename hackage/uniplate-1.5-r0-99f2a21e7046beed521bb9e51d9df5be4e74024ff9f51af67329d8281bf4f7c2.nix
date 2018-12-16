{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { ghc_6_10 = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "uniplate";
        version = "1.5";
      };
      license = "BSD-3-Clause";
      copyright = "2006-10, Neil Mitchell";
      maintainer = "ndmitchell@gmail.com";
      author = "Neil Mitchell";
      homepage = "http://community.haskell.org/~ndm/uniplate/";
      url = "";
      synopsis = "Help writing simple, consise and fast generic operations.";
      description = "Uniplate is library for writing simple and concise generic operations.\nUniplate has similar goals to the original Scrap Your Boilerplate work,\nbut is substantially simpler and faster.\n\nTo get started with Uniplate you should import one of the three following\nmodules:\n\n* \"Data.Generics.Uniplate.Data\" - to quickly start writing generic functions.\nMost users should start by importing this module.\n\n* \"Data.Generics.Uniplate.Direct\" - a replacement for \"Data.Generics.Uniplate.Data\"\nwith substantially higher performance (around 5 times), but requires writing\ninstance declarations.\n\n* \"Data.Generics.Uniplate.Operations\" - definitions of all the operations defined\nby Uniplate. Both the above two modules re-export this module.\n\nIn addition, some users may want to make use of the following modules:\n\n* \"Data.Generics.SYB\" - users transitioning from the Scrap Your Boilerplate library.\n\n* \"Data.Generics.Compos\" - users transitioning from the Compos library.\n\n* \"Data.Generics.Uniplate.DataOnly\" - users making use of both @Data@ and @Direct@\nto avoid getting instance conflicts.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.ghc_6_10
          then [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.syb)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
          ];
      };
    };
  }