{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "clafer";
        version = "0.3.9";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michal Antkiewicz <mantkiew@gsd.uwaterloo.ca>";
      author = "Kacper Bak, Jimmy Liang, Michal Antkiewicz, Ed Zulkoski, Luke Michael Brown, Paulius Juodisius, Rafael Olaechea";
      homepage = "http://clafer.org";
      url = "";
      synopsis = "clafer compiles Clafer models to other formats, such as Alloy, XML, HTML, Dot.";
      description = "Clafer is a general purpose, lightweight, structural modeling language developed at GSD Lab, University of Waterloo, and MODELS group at IT University of Copenhagen. Lightweight modeling aims at improving the understanding of the problem domain in the early stages of software development and determining the requirements with fewer defects. Clafer's goal is to make modeling more accessible to a wider range of users and domains. The tool provides a reference language implementation. It translates models to other formats (e.g. Alloy, XML) to allow for reasoning with existing tools.";
      buildType = "Simple";
    };
    components = {
      "clafer" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.transformers)
          (hsPkgs.HTTP)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.cmdargs)
          (hsPkgs.data-stringmap)
          (hsPkgs.executable-path)
          (hsPkgs.json-builder)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.network-uri)
          (hsPkgs.string-conversions)
          (hsPkgs.split)
        ] ++ [ (hsPkgs.HaXml) ];
      };
      exes = {
        "clafer" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.mtl)
            (hsPkgs.cmdargs)
            (hsPkgs.split)
            (hsPkgs.clafer)
          ] ++ [ (hsPkgs.HaXml) ];
        };
      };
      tests = {
        "test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.data-stringmap)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-th)
            (hsPkgs.clafer)
          ] ++ [ (hsPkgs.HaXml) ];
        };
      };
    };
  }