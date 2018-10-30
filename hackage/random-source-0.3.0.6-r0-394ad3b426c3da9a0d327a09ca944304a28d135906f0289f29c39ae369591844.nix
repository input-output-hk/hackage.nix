{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      base4 = true;
      mtl2 = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "random-source";
        version = "0.3.0.6";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/mokus0/random-fu";
      url = "";
      synopsis = "Generic basis for random number generators";
      description = "Random number generation based on entropy sources\nable to produce a small but well-defined set of\nprimitive variates.  Also includes facilities for\n\\\"completing\\\" partial implementations, making it\neasy to define new entropy sources in a way that\nis naturally forward-compatible.\n\nChanges in 0.3.0.6: Fixed overzealous fix in 0.3.0.5.  The people responsible for sacking the people who have been sacked, etc., have been sacked.\n\nChanges in 0.3.0.5: Renamed some internal modules and accidentally some external ones too.  Whoops.  Please don't use this version, it will only end in tears.\n\nChanges in 0.3.0.4: Fixed a typo that broke building\nwith MTL-1\n\nChanges in 0.3.0.3: Fixes for GHC's deprecation\nof Foreign.unsafePerformIO\n\nChanges in 0.3.0.2: Fixes for GHC 7.2.*'s crazy\nTemplate Haskell changes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.flexible-defaults)
          (hsPkgs.mersenne-random-pure64)
          (hsPkgs.random)
          (hsPkgs.stateref)
          (hsPkgs.template-haskell)
          (hsPkgs.th-extras)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs.mwc-random)) ++ [
          (hsPkgs.mtl)
        ]) ++ (if flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }