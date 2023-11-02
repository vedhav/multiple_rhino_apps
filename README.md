### About

This repository shows how you can place multiple rhino apps in a single repository while sharing common modules between them.

### Main Idea

Making sure that you have the proper `box.path` is the key to creating such structure. In this case we make sure that the individual rhino apps have the `box.path` set to the root of the repository.

By default the `box.path` is set to the current directory of the rhino app in the `.Rprofile`. You will need to modify this in each of the rhino apps to make sure they all have a common path, In this case I choose them to be the root of the repositoey, but they can be any place that you'd like (You can also use `..` in box imports).

### Structure of the repository

This is the general structure of the repository. You can technically also share the modules from the `app_1` into `app_2` but it's not recommended because it might cause confusion. One day when you delede the `app_1` directory none of the other rhino apps should be affected. So, I recommend sharing modules from another common directory which makes it clear that they are being shared into other app directories.

```
.
├── app_1
│   ├── app
│   │   ├── view
│   │   │   └── app_1_view.R
│   │   ├── logic
│   │   │   └── app_1_logic.R
│   │   ├── data
│   │   │   └── app_1_data.csv
│   │   └── main.R
│   ├── app.R
│   ├── renv.lock
│   ├── .Rprofile
├── app_2
│   ├── app
│   │   ├── view
│   │   │   └── app_2_sidebar.R
│   │   │   └── app_2_mainbar.R
│   │   ├── logic
│   │   │   └── app_2_logic.R
│   │   └── main.R
│   ├── app.R
│   ├── renv.lock
│   ├── .Rprofile
├── common_modules
│   ├── tables
│   │   ├── demographic_table.R
│   │   ├── safety_table.R
│   ├── graphs
│   │   ├── km_plot.R
│   │   ├── scatter_plot.R
```
