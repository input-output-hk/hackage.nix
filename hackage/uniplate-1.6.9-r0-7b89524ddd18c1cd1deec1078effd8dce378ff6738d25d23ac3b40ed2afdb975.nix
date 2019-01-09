{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { typeable_fingerprint = true; separate_syb = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "uniplate"; version = "1.6.9"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2006-2012";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/uniplate/";
      url = "";
      synopsis = "Help writing simple, concise and fast generic operations.";
      description = "Uniplate is library for writing simple and concise generic operations.\nUniplate has similar goals to the original Scrap Your Boilerplate work,\nbut is substantially simpler and faster. The Uniplate manual is available at\n<http://community.haskell.org/~ndm/darcs/uniplate/uniplate.htm>.\n\nTo get started with Uniplate you should import one of the three following\nmodules:\n\n* \"Data.Generics.Uniplate.Data\" - to quickly start writing generic functions.\nMost users should start by importing this module.\n\n* \"Data.Generics.Uniplate.Direct\" - a replacement for \"Data.Generics.Uniplate.Data\"\nwith substantially higher performance (around 5 times), but requires writing\ninstance declarations.\n\n* \"Data.Generics.Uniplate.Operations\" - definitions of all the operations defined\nby Uniplate. Both the above two modules re-export this module.\n\nIn addition, some users may want to make use of the following modules:\n\n* \"Data.Generics.Uniplate.Zipper\" - a zipper built on top of Uniplate instances.\n\n* \"Data.Generics.SYB\" - users transitioning from the Scrap Your Boilerplate library.\n\n* \"Data.Generics.Compos\" - users transitioning from the Compos library.\n\n* \"Data.Generics.Uniplate.DataOnly\" - users making use of both @Data@ and @Direct@\nto avoid getting instance conflicts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.typeable_fingerprint
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.syb)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            ]
          else if flags.separate_syb
            then [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.syb) ]
            else [ (hsPkgs.base) (hsPkgs.containers) ];
        };
      };
    }