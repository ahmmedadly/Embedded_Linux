#### **5. Difference between `adduser` and `useradd`**
----------------------------------------------------------------------------------------------------------
| **Feature**      | **adduser**                              | **useradd**                              |
|------------------|------------------------------------------|------------------------------------------|
| **Purpose**      | User-friendly wrapper for user creation  | Low-level utility for adding users       |
| **Behavior**     | Creates user with default configurations | Minimal setup, requires explicit options |
| **Interactive**  | Yes                                      | No                                       |
| **Configuration**| Uses `/etc/adduser.conf`                 | Uses `/etc/default/useradd`              |
----------------------------------------------------------------------------------------------------------
##### **Example:**
1-> Using `adduser`:
```bash
command --> adduser john
# Provides prompts for password, home directory, etc.
```

2-> Using `useradd`:
```bash
command --> useradd -m -g FamilyName john
# Only adds the user; further setup must be done manually
```

