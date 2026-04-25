var _projectIds = variable_struct_get_names(projects);

for (var _i = 0; _i < array_length(_projectIds); _i++) {
    var _key     = _projectIds[_i];
    var _project = projects[$ _key];

    if (_project.progress >= knitInterval) {
        _project.finished = true;
        _project.progress = knitInterval;
    }

    if (!_project.finished && objPenny.pennyKnitting && _key == activeProject) {
        _project.progress++;
    }
}

if (objPenny.image_xscale == -1) {
    knitX = objPenny.x - 7;
    knitY = objPenny.y - 11;
} else {
    knitX = objPenny.x - 12;
    knitY = objPenny.y - 11;
}

if (room == computerRoom || room == creditsRoom || room == streetRoom0 || room == streetRoom1 || room == streetRoom2 || room == streetRoom3) {
    visible = false;
} else {
    visible = true;
}