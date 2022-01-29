def pick_best_config(configs, goal):
    if goal == "ACCURACY":
        return pick_best_config_by_accuracy(configs)
    elif goal == "ENERGY":
        return pick_best_config_by_energy(configs)
    else:
        return None


def pick_best_config_by_accuracy(configs):
    configs = sorted(configs, key=lambda config: config["accuracy"], reverse=True)
    return configs[0]


def pick_best_config_by_energy(configs):
    configs = sorted(configs, key=lambda config: config["energy"])
    return configs[0]
