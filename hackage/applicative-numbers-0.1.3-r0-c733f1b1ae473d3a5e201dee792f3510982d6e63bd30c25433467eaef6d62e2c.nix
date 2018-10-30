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
      specVersion = "1.2";
      identifier = {
        name = "applicative-numbers";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/applicative-numbers";
      url = "http://code.haskell.org/applicative-numbers";
      synopsis = "Applicative-based numeric instances";
      description = "Any applicative functor can be given numeric instances in a boilerplate way.\nThe /applicative-numbers/ package provides an include file that makes it a\nsnap to define these instances.\nSee \"Data.Numeric.Function\" for an example.\n\nProject wiki page: <http://haskell.org/haskellwiki/applicative-numbers>\n\nCopyright 2009-2013 Conal Elliott; BSD3 license.\n\n\nInstances of @Num@ classes for applicative functors.  To be @#include@'d after\ndefining @APPLICATIVE@ as the applicative functor name and @CONSTRAINTS@ as a\nlist of constraints, which must carry its own trailing comma if non-empty.\nThe @APPLICATIVE@ symbol gets @#undef@'d at the end of the include file, so\nthat multiple includes are convenient.\n\nFor instance,\n\n@\n#define INSTANCE_Ord\n#define INSTANCE_Enum\n\n#define APPLICATIVE Vec2\n#include \\\"ApplicativeNumeric-inc.hs\\\"\n\n#define APPLICATIVE Vec3\n#include \\\"ApplicativeNumeric-inc.hs\\\"\n\n#define APPLICATIVE Vec4\n#include \\\"ApplicativeNumeric-inc.hs\\\"\n@\n\nYou'll also have to import 'pure' and 'liftA2' from \"Control.Applicative\"\nand specify @the FlexibleContexts@ language extension (due to an implementation hack).\n\nSome instances are generated only if a corresponding CPP symbol is\ndefined: @INSTANCE_Eq@, @INSTANCE_Ord@, @INSTANCE_Show@, @INSTANCE_Enum@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }