/**
 * @param {import('./Button').Props} props
 */
export const Button = (props) => {
  const { title, children } = props;

  return (
    <div>
      {title && <h1>{title}</h1>}
      <button {...restProps}>{children}</button>
    </div>
  );
};
