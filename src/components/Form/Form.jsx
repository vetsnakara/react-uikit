import cn from "classnames";

// todo: form__descripted (variant)
// todo: recreate all examples from uikit

export const Form = ({ className, children, ...otherProps }) => {
    const classNames = cn("form", className, {});

    return (
        <form className={classNames} {...otherProps}>
            {children}
        </form>
    );
};

export const FormSection = ({ className, children, ...otherProps }) => {
    const classNames = cn("form__section", className, {});

    return (
        <div className={classNames} {...otherProps}>
            {children}
        </div>
    );
};

export const FormDescription = ({ className, children, ...otherProps }) => {
    const classNames = cn("form__description", className, {});

    return (
        <div className={classNames} {...otherProps}>
            {children}
        </div>
    );
};

export const FormFieldset = ({ className, children, ...otherProps }) => {
    const classNames = cn("form__fieldset", className, {});

    return (
        <fieldset className={classNames} {...otherProps}>
            {children}
        </fieldset>
    );
};

export const FormTitle = ({ className, required, tag: Tag = "legend", children, ...otherProps }) => {
    const mainClassName = "form__title";

    const classNames = cn(mainClassName, className, {
        [`${mainClassName}_required`]: required,
    });

    return (
        <Tag className={classNames} {...otherProps}>
            {children}
        </Tag>
    );
};

Object.assign(Form, {
    Section: FormSection,
    Description: FormDescription,
    Fieldset: FormFieldset,
    Title: FormTitle,
});
