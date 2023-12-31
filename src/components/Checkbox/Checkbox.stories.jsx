import { useState, useEffect, useRef } from "react";

import { VStack } from "../VStack";

import { Checkbox } from "./Checkbox";

export default {
    title: "inputs/Checkbox",
};

export const Default = () => <Checkbox label="Default" />;

export const Checked = () => <Checkbox label="Checked" checked />;

export const DefaultChecked = () => <Checkbox label="DefaultChecked" defaultChecked />;

export const Disabled = () => <Checkbox label="One" disabled />;

export const Title = () => <Checkbox label="One" title="Checkbox title" />;

export const Error = () => <Checkbox label="One" error="Error text" />;

export const Switch = () => (
    <>
        <Checkbox label="One" variant={Checkbox.Variant.Switch} />
        <Checkbox label="One" variant={Checkbox.Variant.Switch} checked />
        <Checkbox label="One" variant={Checkbox.Variant.Switch} defaultChecked />
        <Checkbox label="One" variant={Checkbox.Variant.Switch} disabled />
        <Checkbox label="One" variant={Checkbox.Variant.Switch} title="Switch title" />
        <Checkbox label="One" variant={Checkbox.Variant.Switch} error="Error text" />
    </>
);

export const Uncontrolled = () => {
    const ref = useRef(null);

    useEffect(() => {
        console.log(ref.current.getValue());
    }, []);

    return (
        <Checkbox
            ref={ref}
            label="One"
            onChange={(value) => {
                console.log("value", value);
                console.log("ref.current.getValue()", ref.current.getValue());
            }}
        />
    );
};

export const Controlled = () => {
    const [checked, setChecked] = useState(false);
    return <Checkbox label="One" checked={checked} onChange={setChecked} />;
};

// Group
// --------------------------

export const GroupDisabled = () => {
    return (
        <Checkbox.Group name="group" defaultValue={["2"]} disabled>
            <Checkbox value="1" label="One" />
            <Checkbox value="2" label="Two" />
            <Checkbox value="3" label="Three" />
        </Checkbox.Group>
    );
};

export const GroupSwitch = () => {
    return (
        <Checkbox.Group name="group" defaultValue={["2"]} variant={Checkbox.Variant.Switch}>
            <VStack gap={1}>
                <Checkbox value="1" label="One" />
                <Checkbox value="2" label="Two" />
                <Checkbox value="3" label="Three" />
            </VStack>
        </Checkbox.Group>
    );
};

export const GroupUncontrolled = () => {
    const ref = useRef(null);

    const handleChange = (value) => {
        console.log("value", value);
        console.log("ref.current.getValue()", ref.current.getValue());
    };

    useEffect(() => {
        console.log(ref.current.getValue());
    });

    return (
        <Checkbox.Group ref={ref} name="group" defaultValue={["2"]} onChange={handleChange}>
            <Checkbox value="1" label="One" />
            <Checkbox value="2" label="Two" />
            <Checkbox value="3" label="Three" />
        </Checkbox.Group>
    );
};

export const GroupControlled = () => {
    const [value, setValues] = useState(["3"]);

    return (
        <Checkbox.Group name="group" value={value} onChange={setValues}>
            <Checkbox value="1" label="One" />
            <Checkbox value="2" label="Two" />
            <Checkbox value="3" label="Three" />
        </Checkbox.Group>
    );
};
