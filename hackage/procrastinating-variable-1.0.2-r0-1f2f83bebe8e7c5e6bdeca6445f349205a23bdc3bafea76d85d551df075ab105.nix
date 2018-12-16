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
        name = "procrastinating-variable";
        version = "1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcross@phys.washington.edu>";
      author = "Gregory Crosswhite";
      homepage = "http://github.com/gcross/procrastinating-variable";
      url = "";
      synopsis = "Haskell values that cannot be evaluated immediately.";
      description = "Procrastinating variables ('PVar's) are meant to be used in cases where\nyou want to give someone a value that you do not have available yet,\nbut will definitely have ready by the time that they need to use it.\n\n'PVar's have the advantage that you do not make the user of your value\nexecute some kind of unwrapping routine in order to get access to the\nvalue within.  For example, this is useful when you are constructing\nclosures that you want to go ahead and construct now even though some\nof the values that they contain are not available yet.\n\n'PVar's are implemented with a lazy thunk that reads from\nan 'IORef'; before the 'IORef' is written to, it contains _|_ (an\nexception with a descriptive error message) so that an error is raised\nin the user code if the variable is accidently accessed before the\nvalue is ready.\n\nNOTE: 'PVar's are modeled closely on the 'IVar' implementation in\nthe ivar-simple package.  The major difference is that if you\ntry to read an 'IVar' before it has been given a value, it blocks\nuntil the value is available, whereas reading from a 'PVar'\nbefore it is ready raises an exception.  The reason behind the\ndifferent symantics for 'PVar' is because if the user\naccidently accesses the value too early, you want there to be a\nlot of noise to let him or her know about it, rather than\nmerely blocking the thread indefinitely and causing them to\nwonder what went wrong.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }