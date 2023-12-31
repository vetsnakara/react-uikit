import cn from "classnames";

export const BadgeVariant = {
    Success: "success",
    Error: "error",
    Warning: "warning",
    Danger: "danger",
    Transparent: "transparent",
};

export const BadgeMaxWidth250 = 250;

export const Badge = ({ className, icon, variant, round, maxWidth, closeable, onClose, children }) => {
    const classNames = cn("badge", className, {
        [`badge_${variant}`]: variant,
        [`badge_max-width-${maxWidth}`]: maxWidth,
        badge_round: round,
    });

    return (
        <div className={classNames}>
            {icon && (
                <svg className="icon badge__icon">
                    <use href={`uikit/icon/icons.svg#${icon}`}></use>
                </svg>
            )}
            <span className="badge__text">{children}</span>
            {closeable && (
                <button type="button" className="badge__button-icon" onClick={onClose}>
                    <svg className="badge__close icon icon_s">
                        <use href="uikit/icon/icons.svg#close"></use>
                    </svg>
                </button>
            )}
        </div>
    );
};
