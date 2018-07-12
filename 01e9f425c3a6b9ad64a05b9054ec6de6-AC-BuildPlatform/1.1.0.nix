{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AC-BuildPlatform";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "MathematicalOrchid@hotmail.com";
        author = "Andrew Coppin";
        homepage = "";
        url = "";
        synopsis = "Detect which OS you're running on.";
        description = "This package lets you easily query various facts about the system\nthat your code is running on. Currently, it reports whether the\noperating system is \\\"Windows\\\" or \\\"Unix\\\", and also the name and\nversion of the Haskell compiler used.\n\nThis package implements lots of complicated trickery to determine\nthe build environment. Once built, other packages can query this\ninformation without needing to do complex trickery themselves.\n\nSee also the included @ReadMe.xhtml@ file.\n\nChanges:\n\n* If the configure step fails to detect the OS type, the configure\nstep now /fails/.\n\n* A new file @Manual.hs@ allows you to override the\nauto-detected platform values with whatever you want. (See\n@ReadMe.xhtml@ for details.)\n\n* All the platform queries no longer return @Maybe@ values. (This\nbreaks API compatibility, hence the version bump.)";
        buildType = "Custom";
      };
      components = {
        "AC-BuildPlatform" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }