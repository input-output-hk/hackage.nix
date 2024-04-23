{
  "0.0.0" = {
    sha256 = "d2ee8a48909db7f6bbf3deae03d9cfbbdfcce86932f0cae8fb59bf6d0c10ed61";
    revisions = {
      r0 = {
        nix = import ../hackage/basic-lens-0.0.0-r0-66fc4bc8569e2cddb62edda6c7c2a69c768181c171b911a740c9b511906d187c.nix;
        revNum = 0;
        sha256 = "66fc4bc8569e2cddb62edda6c7c2a69c768181c171b911a740c9b511906d187c";
      };
      r1 = {
        nix = import ../hackage/basic-lens-0.0.0-r1-dcb1e49555431b94fedf161e3a2169213eea59167a34eb20b91be22baac9e170.nix;
        revNum = 1;
        sha256 = "dcb1e49555431b94fedf161e3a2169213eea59167a34eb20b91be22baac9e170";
      };
      default = "r1";
    };
  };
  "0.0.1" = {
    sha256 = "2b4a07bedcc4b4cd36bb208ce4a08d62bed64f28141a8d5ebea9270e36703304";
    revisions = {
      r0 = {
        nix = import ../hackage/basic-lens-0.0.1-r0-e586cb7e1a5a37b13b0ec1d5a9e3e7e59855cac5035f781f86a18c617ead03ee.nix;
        revNum = 0;
        sha256 = "e586cb7e1a5a37b13b0ec1d5a9e3e7e59855cac5035f781f86a18c617ead03ee";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "dae71ad00f4934019c724d057e63a924753e9c06baa3c3353ad0a5cf57ffd4e2";
    revisions = {
      r0 = {
        nix = import ../hackage/basic-lens-0.0.2-r0-11fc2a10bd2c956fc0700660a6a86b0eacbb3487b5d8cf603f97dcb7b0707d5c.nix;
        revNum = 0;
        sha256 = "11fc2a10bd2c956fc0700660a6a86b0eacbb3487b5d8cf603f97dcb7b0707d5c";
      };
      default = "r0";
    };
  };
}