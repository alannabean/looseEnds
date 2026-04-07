var _projectIds = variable_struct_get_names(projects);

for (var _i = 0; _i < array_length(_projectIds); _i++) {
    var _key        = _projectIds[_i];
    var _project    = projects[$ _key];
    var _sprIndex   = int64(_key);
    var _partHeight = sprite_get_height(sprKnits) / knitInterval;
    var _drawHeight = _partHeight * _project.progress;

    var _isActive = (_key == activeProject);

    if (_isActive && objPenny.pennyKnitting) {
        draw_sprite_part(sprKnits, _sprIndex, knitPartX, knitPartY, knitPartWidth, _drawHeight, knitX, knitY);
    } else {

        var _offsetX = _i * 20;
        draw_sprite_part(sprKnits, _sprIndex, knitPartX, knitPartY, knitPartWidth, _drawHeight, 12 + _offsetX, 32);
    }
}