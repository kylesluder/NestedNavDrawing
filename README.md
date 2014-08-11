Nesting a UINavigationController inside a view with a maskView breaks visual effects for all visible nav bars
===

Summary
---

If a UINavigationController is embedded inside of a UIView that has a maskView, then that navigation controller's navigation bar has a broken background visual effect--things behind it are not blurred, leading to an illegible and ugly navigation bar.

Furthermore, any ancestor UINavigationController's navigation bar loses its background entirely.


Steps to Reproduce
---

1. Build and run the attached demo app.
2. Scroll the text underneath the nav bar.


Expected Results
---

Nav bar blurs text.


Actual Results
---

Text is not blurred; outer nav bar is missing its background entirely.


Configuration
---

iOS 8 beta 5 simulator and device


Version and Build
--- 

iOS 8 beta 5 (12A4345d)