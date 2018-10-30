{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      transformers-four = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "text-show-instances";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2014 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/text-show-instances";
      url = "";
      synopsis = "Additional instances for text-show";
      description = "@text-show-instances@ is a supplemental library to @text-show@\nthat provides additional @Show@ instances for data types in\ncommon Haskell libraries not encompassed by @text-show@.\nCurrently, @text-show-instances@ covers these libraries:\n\n* @<http://hackage.haskell.org/package/containers           containers>@           DONE\n* @<http://hackage.haskell.org/package/directory            directory>@            DONE\n* @<http://hackage.haskell.org/package/hpc                  hpc>@                  DONE\n* @<http://hackage.haskell.org/package/old-locale           old-locale>@           DONE\n* @<http://hackage.haskell.org/package/old-time             old-time>@             DONE\n* @<http://hackage.haskell.org/package/pretty               pretty>@               DONE\n* @<http://hackage.haskell.org/package/random               random>@               DONE\n* @<http://hackage.haskell.org/package/semigroups           semigroups>@           DONE\n* @<http://hackage.haskell.org/package/tagged               tagged>@               DONE\n* @<http://hackage.haskell.org/package/template-haskell     template-haskell>@     DONE\n* @<http://hackage.haskell.org/package/time                 time>@                 DONE\n* @<http://hackage.haskell.org/package/transformers         transformers>@         DONE\n* @<http://hackage.haskell.org/package/unix                 unix>@                 DONE\n* @<http://hackage.haskell.org/package/unordered-containers unordered-containers>@ DONE\n* @<http://hackage.haskell.org/package/vector               vector>@               DONE\n* @<http://hackage.haskell.org/package/Win32                Win32>@                NOT DONE\n* @<http://hackage.haskell.org/package/xhtml                xhtml>@                DONE\n\nOne can use these instances by importing\n\"Text.Show.Text.Instances\". Alternatively, there are monomorphic\nversions of the @showb@ function available in the other submodules\nof \"Text.Show.Text\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.hpc)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.pretty)
          (hsPkgs.random)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.xhtml)
        ] ++ (if flags.transformers-four
          then [ (hsPkgs.transformers) ]
          else [
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
          ])) ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
      tests = {
        "text-show-instances-properties" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hpc)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.pretty)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.random)
            (hsPkgs.semigroups)
            (hsPkgs.tagged)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.template-haskell)
            (hsPkgs.text-show)
            (hsPkgs.text-show-instances)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.xhtml)
          ] ++ (if flags.transformers-four
            then [ (hsPkgs.transformers) ]
            else [
              (hsPkgs.transformers)
              (hsPkgs.transformers-compat)
            ])) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
        };
      };
    };
  }